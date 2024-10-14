import math
import random
from tensorflow.keras.models import load_model
from sklearn.neighbors import KNeighborsClassifier
import numpy as np
import pandas as pd
import os
import re
import tensorflow as tf
from threading import Thread
import time
from tqdm import tqdm
import matplotlib.pyplot as plt
import plotly.express as px
from plotly.offline import init_notebook_mode
from tensorflow.keras.preprocessing.image import ImageDataGenerator, load_img, img_to_array
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.utils import Sequence
from tensorflow.keras.utils import to_categorical
from tensorflow.keras.models import Sequential, Model
from tensorflow.keras.layers import Conv2D, MaxPooling2D, GlobalAveragePooling2D, Activation, Dropout, Flatten, Dense, Input, Layer
from tensorflow.keras.applications import VGG16, ResNet50, DenseNet201, Xception
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.utils import plot_model
from tensorflow.keras.callbacks import ModelCheckpoint, EarlyStopping, ReduceLROnPlateau
from sklearn.decomposition import PCA
import joblib
from flask import Flask, request, jsonify
import os
import json
from PIL import Image
import base64
from io import BytesIO
from selenium import webdriver
from selenium.webdriver.common.by import By
import requests
import os
from flask_cors import CORS
import asyncio
init_notebook_mode(connected=True)


app = Flask(__name__)
CORS(app)

def read_img(image_path):
    image = load_img(image_path,target_size=(256,256,3))
    image = img_to_array(image)
    image = image/255.
    return image

def get_similiar(file_name):
    data = pd.read_csv("./klain_landau_AI_project/server/cropp_style.csv")
    data["articleType"]=data['subCategory']
    file_names = data['filename'].apply(os.path.basename)
    new_df = pd.DataFrame(file_names, columns=['filename'])
    # data['only_name'] = data['filename'].apply(os.path.basename)
    print(new_df.head())
        # data_features = saved_model.predict(data_generator,verbose=1)
    data_features=np.load('./klain_landau_AI_project/server/data_features.npy')
    # pca = joblib.load('pca_model.pkl')
    pca = PCA()
    pca.fit(data_features)
    data_pca = pca.fit_transform(data_features)[:,:313]
    data_pca = pd.DataFrame(data_pca)
    data = data.iloc[:,0:10]
    data = data.merge(data_pca, how='left', left_index=True, right_index=True)
    Xdata = data.iloc[:,-313:]
    ydata = data['id']
    neigh = KNeighborsClassifier(n_neighbors=6)
    neigh.fit(Xdata, ydata)
    i=0
    names=[]
    if not data[new_df['filename'] == file_name].empty:
        i = data.loc[new_df['filename'] == file_name].index[0]
        print(f"The index of the filename '{file_name}' is: {i}")
        img1 = read_img(data.loc[i,'filename'])
        dist, index = neigh.kneighbors(X=Xdata.iloc[i,:].values.reshape(1,-1))
        plt.figure(figsize = (4 , 4))
        plt.imshow(img1)
        plt.title("Input Image")
        print("dist",dist)
        print("index",index)
        plt.figure(figsize = (20 , 20))
        names=[data.loc[index[0][i],'filename'] for i in range(1,6)]
        for i in range(1,6):
            print(data.loc[index[0][i],'filename'])
            plt.subplot(1 , 5, i)
            plt.subplots_adjust(hspace = 0.5 , wspace = 0.3)
            image = read_img(data.loc[index[0][i],'filename'])
            plt.imshow(image)
            plt.title(f'Similar Product #{i}')
    else:
        print(f"The filename '{file_name}' was not found in the DataFrame.")
    return names

def get_images_paths(names):
    images=[]
    for name in names:
        parts=name.split('/')
        
        # print(os.path.join(*parts[-3:])) 
        # plt.figure()
        # plt.imshow(read_img(os.path.join(*parts[-3:])))  
        images+=['./klain_landau_AI_project/server/'+os.path.join(*parts[-3:])] 
    return images

def get_images_from_path(name):
    image_list = []
    names=get_similiar(name)
    images_paths=get_images_paths(names)
    for filename in images_paths:
        if filename.endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp')):  # You can add more image extensions if needed
            image_path = filename
            with open(image_path, 'rb') as img_file:
                img = Image.open(img_file)
                # img.show()
                buffered = BytesIO()
                img.save(buffered, format=img.format)
                img_str = base64.b64encode(buffered.getvalue()).decode('utf-8')
                image_list.append({'filename': get_image_src(filename), 'image': img_str})
    return image_list



#  similiars
@app.route('/get_images', methods=['POST'])
def get_images():
    data = request.json
    path = data.get('path')
    # if not path or not os.path.exists(path):
    #     return jsonify({'error': 'Invalid path'}), 400
    current_directory = os.getcwd()
    print("Current directory:", current_directory)
    images = get_images_from_path(path)
    print(images)
    return jsonify(images)

@app.route('/get_all_products', methods=['GET'])
def get_all_products():
    url = 'https://localhost:7127/api/Product'
    headers = {'Content-Type': 'application/json'}
    response = requests.get(url, verify=False)
    if response.status_code == 200:
        print("POST request successful")
        print("Response:", response.text)
        return jsonify(response.json)
    else:
        print("POST request failed with status code:", response.status_code)


def get_image_src(filename):
    final_name_parts=os.path.basename(filename).split('_')
    final_name=final_name_parts[0]+'.jpg'
    print("hello")
    print(final_name)
    url = f'https://localhost:7127/api/Product/{final_name}/mekimi'
    headers = {'Content-Type': 'application/json'}
    response = requests.get(url, verify=False)
    print(response)
    data = response.json()
    # print(data)
    # Access the pictureSrc value
    picture_src = data["pictureSrc"]
    return picture_src

def get_image_name(full_path):
    name=os.path.basename(full_path)
    parts=name.split('_')
    return parts[0]+'.jpg'

def get_image_full_path(image_path):
    full_path=os.path.join(os.getcwd(),os.path.join(*image_path.split('/')[1:]))
    # print(full_path)
    return full_path

@app.route('/get_all_pictures', methods=['GET'])
def get_all_pictures():
    data = pd.read_csv("./klain_landau_AI_project/server/cropp_style.csv")
    data["articleType"]=data['subCategory']
    file_names = data['filename'].apply(lambda x:'./klain_landau_AI_project/server/'+os.path.join(*x.split('/')[-3:]))
    new_df = pd.DataFrame(file_names, columns=['filename'])
    print(new_df.head())
    image_names=[]
    image_list=[]
    for filename in file_names:
        if filename.endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp')):  # You can add more image extensions if needed
            image_path = filename
            # if get_image_name(image_path) not in image_names:
            #     image_names+=[get_image_name(image_path)]
                
            with open(image_path, 'rb') as img_file:
                img = Image.open(img_file)
                # img.show()
                buffered = BytesIO()
                img.save(buffered, format=img.format)
                img_str = base64.b64encode(buffered.getvalue()).decode('utf-8')
                # pictureSrc=get_image_src(os.path.basename(image_path))
                # full_path = os.path.abspath(image_path)
                # print(os.path.normpath(get_image_full_path(image_path)))
                image_list.append({ 'image': get_image_full_path(image_path)})
    # print(image_names)
    for image in image_list:
        image['image']=image['image'].replace('\\\\', '\\')
        print(image['image'].replace('\\\\', '\\'))
    print(image_list)
    return image_list

# load part images
@app.route('/get_part_images/<part>', methods=['GET'])
def get_part_images(part):
    image_list=[]
    data = pd.read_csv("./klain_landau_AI_project/server/cropp_style.csv")
    data["articleType"]=data['subCategory']
    file_names = data['filename'].apply(lambda x:'./klain_landau_AI_project/server/'+os.path.join(*x.split('/')[-3:]))
    print(file_names)
    if (int(part)-1)*10>=len(file_names):
        return image_list
    else:
        start_index=(int(part)-1)*10
        end_index=int(part)*10
        if(end_index>len(file_names)):
            end_index=len(file_names)
        for filename in file_names[start_index:end_index]:
            if filename.endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp')):  
                image_path = filename
                with open(image_path, 'rb') as img_file:
                    img = Image.open(img_file)
                    buffered = BytesIO()
                    img.save(buffered, format=img.format)
                    img_str = base64.b64encode(buffered.getvalue()).decode('utf-8')
                    image_list.append({'filename': os.path.basename(filename), 'image': img_str})
        return image_list
# get parts available to load
@app.route('/available_parts', methods=['GET'])
def get_available_parts():
    data = pd.read_csv("./klain_landau_AI_project/server/cropp_style.csv")
    data["articleType"]=data['subCategory']
    file_names = data['filename'].apply(lambda x:'./klain_landau_AI_project/server/'+os.path.join(*x.split('/')[-3:]))
    return str(math.ceil(len(file_names)/10))

if __name__ == '__main__':
    app.run(debug=True)
    
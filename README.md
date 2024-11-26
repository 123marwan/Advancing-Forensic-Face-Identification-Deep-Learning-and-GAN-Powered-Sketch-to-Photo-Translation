
# Advancing Forensic Face Identification: Deep Learning and GAN-Powered Sketch-to-Photo Translation

### Description

This project aims to create a system that identifies a suspect from an image captured during a crime and matches it with the closest individual in a criminal database using advanced computer vision and machine learning techniques.

#### Key Features
Image Preprocessing:

Enhance the input image (e.g., adjust brightness, remove noise, crop relevant regions).
Detect faces using facial detection algorithms.
Facial Feature Extraction:

Extract facial features using deep learning models such as Convolutional Neural Networks (CNNs) or pre-trained models like VGGFace, FaceNet, or DeepFace.
Criminal Database:

Maintain a database of images and details of known criminals.
Store extracted facial embeddings for each individual for efficient matching.
Similarity Matching:

Compute the similarity between the facial features of the input image and database entries using metrics like cosine similarity or Euclidean distance.
Identify the closest match (if any) to the input image.
Alert System:

Generate a report with the closest match's details.
Notify relevant authorities with the matched image and metadata (e.g., confidence score).
Performance Metrics:

Evaluate the system's accuracy using metrics like precision, recall, and F1 score.
Implement safeguards against false positives/negatives.


### Requirements
```
pip install numpy
pip install opencv
pip install matplotlib
pip install pywt
pip install seaborn as sn
pip install  joblib
pip install json
pip install tensorflow as tf
pip install keras

```

### Explain Code

### 1. NumPy
**Usage:**  
NumPy is a powerful library for numerical computing in Python. It provides support for multi-dimensional arrays and matrices, along with mathematical functions to perform operations on these arrays.

**Common Applications:**
- Linear algebra
- Array manipulation
- Random number generation
- Scientific computing tasks

---

### 2. OpenCV (opencv-python)
**Usage:**  
OpenCV (Open Source Computer Vision Library) is used for computer vision and image processing tasks. It allows image and video analysis, manipulation, and real-time processing.

**Common Applications:**
- Face detection and recognition
- Image transformations (resizing, cropping, rotation)
- Object detection
- Video processing

---

### 3. Matplotlib
**Usage:**  
A comprehensive library for creating static, interactive, and animated visualizations in Python.

**Common Applications:**
- Creating 2D plots, histograms, bar graphs, scatter plots, etc.
- Customizing visualizations with labels, titles, and legends
- Exporting high-quality figures for publication

---

### 4. PyWavelets (pywt)
**Usage:**  
PyWavelets is used for wavelet transformations. It is especially useful for signal processing, image compression, and feature extraction tasks.

**Common Applications:**
- Decomposing signals/images into frequency components
- Noise reduction and data compression
- Analysis of time-frequency domain data

---

### 5. Seaborn
**Usage:**  
A statistical data visualization library built on Matplotlib. It provides an easy way to create attractive and informative statistical plots.

**Common Applications:**
- Heatmaps
- Pair plots
- Box plots and violin plots
- Enhancing Matplotlib plots with themes

---

### 6. Joblib
**Usage:**  
Joblib is a library for saving and loading Python objects, as well as for efficient parallel computation.

**Common Applications:**
- Saving trained machine learning models to disk
- Parallelizing tasks to speed up computation
- Caching results of expensive computations

---

### 7. JSON (jsonlib or standard library json)
**Usage:**  
JSON libraries handle encoding and decoding JSON (JavaScript Object Notation) data, a common data-interchange format.

**Common Applications:**
- Parsing JSON data from APIs
- Writing data to JSON files
- Converting Python dictionaries to JSON and vice versa

---

### 8. TensorFlow
**Usage:**  
TensorFlow is an open-source framework for building and deploying machine learning models. It supports both deep learning and traditional machine learning workflows.

**Common Applications:**
- Neural networks for computer vision, NLP, and more
- Training and deploying models at scale
- Tensor manipulation and graph computation

---

### 9. Keras
**Usage:**  
Keras is a high-level API for building and training deep learning models. It works as a wrapper for TensorFlow, simplifying the process of creating complex neural networks.

**Common Applications:**
- Building models with a user-friendly syntax
- Prototyping deep learning workflows quickly
- Preprocessing data for machine learning tasks

### Table of contents
- [System requirements](#system-requirements)
- [Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](#app-navigations)
- [Application structure](#project-structure)
- [How to format your code?](#how-you-can-do-code-formatting)
- [How you can improve code readability?](#how-you-can-improve-the-readability-of-code)
- [Libraries and tools used](#libraries-and-tools-used)
- [Support](#support)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Figma design guidelines for better UI accuracy

Read our guidelines to increase the accuracy of design-to-code conversion by optimizing Figma designs.
https://docs.dhiwise.com/docs/Designguidelines/intro

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Demo Video



https://github.com/user-attachments/assets/ba44d954-c060-4818-8c05-8a649542264b




### Support

If you have any problems or questions, go to our Discord channel, where we will help you as quickly as possible: https://discord.com/invite/rFMnCG5MZ7

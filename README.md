# Lane-Detection
Lane-Detection system used to predict the lane in which a car will be able to drive. In this project, I use a deep learning-based approach using a fully convolutional network to output an image of a predicted lane. This architecture is based on SegNet an Encoder-Decoder Architecture for Image Segmentation. The model first predicts the Lane after which it is drawn in Green color on a blank image then it is merged with the original image.

  ![](https://github.com/Moddy2024/Lane-Detection/blob/main/gif.gif)

# Software requirements
To be able to run this you need to have installed
* [Tensorflow](https://www.tensorflow.org/tutorials)
* [OpenCV](https://opencv.org/)
* [Numpy](https://numpy.org/)
* [Pickle](https://docs.python.org/3/library/pickle.html)
* Scipy version 1.1.0
* [Scikit learn](https://scikit-learn.org/stable/)
* [MoviePy](https://pypi.org/project/moviepy/)
* [Keras](https://keras.io/)
* [Visual Keras](https://github.com/paulgavrikov/visualkeras/)

# Key Files
* [lane detection.ipynb](https://github.com/Moddy2024/Lane-Detection/blob/main/lane%20detection.ipynb) - In this file it shows how the data has been normalized, the training of the model is also present here and you can see the CNN that has been used here.
* [models](https://github.com/Moddy2024/Lane-Detection/tree/main/models) - These are the final outputs from the trained model. They are available in h5,tar and pth format.
* [model prediction.ipynb](https://github.com/Moddy2024/Lane-Detection/blob/main/model%20prediction.ipynb) -  Using any one of the trained model files from the above folder and an input video, this predicts the lane, and returns the original video with predicted lane lines drawn onto it.
* [model_visualization.ipynb](https://github.com/Moddy2024/Lane-Detection/blob/main/model_visualization.ipynb) - Using visualkeras to visualize the architecture.
* [Results](https://github.com/Moddy2024/Lane-Detection/tree/main/outputs) - Here I have added some of the results that has been predicted.

# Training and Validation Image Statistics
The images were collected from a mix of different times of day, weather, traffic, and road curvatures.
* Some are from clear night driving, some are from rainy morning driving, and rest from cloudy afternoon driving.
* The roads also contain difficult areas such as construction and intersections.
* Some are straight or mostly straight roads, some are a mix or moderate curves, and most are very curvy roads.
* Finally, horizontal flips of each and every road image and its corresponding label were added, so at the end a total of 12,764 images are present in the dataset.

# Dataset
The full set of images used are [here](https://www.dropbox.com/s/rrh8lrdclzlnxzv/full_CNN_train.p?dl=0) and the full set of labels (which are just the 'G' channel from an RGB image of a re-drawn lane) [here](https://www.dropbox.com/s/ak850zqqfy6ily0/full_CNN_labels.p?dl=0)


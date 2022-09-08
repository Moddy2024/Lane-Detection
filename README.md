# Lane-Detection
Lane-Detection system used to predict the lane in which a car will be able to drive. In this project, I use a deep learning-based approach using a fully convolutional network to output an image of a predicted lane. This architecture is based on SegNet an Encoder-Decoder Architecture for Image Segmentation.

# Software requirements
To be able to run this you need to have installed
* Tensorflow
* OpenCV
* Numpy
* pickle
* Scipy version 1.1.0
* Scikit learn
* MoviePy

# Key Files
* [lane detection.ipynb](https://github.com/HevaAi/Lane-Detection/blob/main/lane%20detection.ipynb) - Here is the fully convolutional neural network used and also a bit of image transformation was done.
* [models](https://github.com/HevaAi/Lane-Detection/tree/main/models) - These are the final outputs from the trained model. They are available in h5,tar and pth format.
* [model prediction.ipynb](https://github.com/HevaAi/Lane-Detection/blob/main/model%20prediction.ipynb) -  Using any one of the trained model files from the above folder and an input video, this predicts the lane, and returns the original video with predicted lane lines drawn onto it.

# Training and Validation Image Statistics
The images were collected from a mix of different times of day, weather, traffic, and road curvatures.
* Some are from clear night driving, some are from rainy morning driving, and rest from cloudy afternoon driving.
* The roads also contain difficult areas such as construction and intersections.
* Some are straight or mostly straight roads, some are a mix or moderate curves, and most are very curvy roads.
* Finally, horizontal flips of each and every road image and its corresponding label were added, so at the end a total of 12,764 images are present in the dataset.

# Dataset
The full set of images used are [here](https://www.dropbox.com/s/rrh8lrdclzlnxzv/full_CNN_train.p?dl=0) and the full set of labels (which are just the 'G' channel from an RGB image of a re-drawn lane) [here](https://www.dropbox.com/s/ak850zqqfy6ily0/full_CNN_labels.p?dl=0)

=======
# Lane-Detection


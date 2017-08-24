# Load and display an image from docker to host
import cv2
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# assumign you've cloned: https://github.com/pdvelez/CV-lecture-quizzes-python
im = cv2.imread('CV-lecture-quizzes-python/2A-L1/images/bicycle.png')
fig = plt.figure()
plt.imshow(im)
plt.axis('off')
# open on your host machine
fig.savefig('out.png')


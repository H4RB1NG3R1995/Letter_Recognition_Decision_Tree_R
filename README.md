# Letter_Recognition_Decision_Tree_R
A decision tree model which predicts which letter a particular image belongs to

Overview:
LETTER RECOGNITION One of the earliest applications of the predictive analytics methods was to automatically recognize letters, which post office machines use to sort mail. In this problem, you will build a Decision Tree model that uses statistics of images of four letters in the Roman alphabet -- A, B, P, and R -- to predict which letter a particular image corresponds to.

Data: 

The file letters_ABPR.csv contains 3116 observations, each of which corresponds to a certain image of one of the four letters A, B, P and R. The images came from 20 different fonts, which were then randomly distorted to produce the final images; each such distorted image is represented as a collection of pixels, each of which is "on" or "off". For each such distorted image, we have available certain statistics of the image in terms of these pixels, as well as which of the four letters the image is. This data comes from the UCI Machine Learning Repository.

This dataset contains the following 17 variables: 
1. letter = the letter that the image corresponds to (A, B, P or R) 
2. xbox = the horizontal position of where the smallest box covering the letter shape begins. 
3. ybox = the vertical position of where the smallest box covering the letter shape begins. 
4. width = the width of this smallest box. 
5. height = the height of this smallest box. 
6. onpix = the total number of "on" pixels in the character image 
7. xbar = the mean horizontal position of all of the "on" pixels 
8. ybar = the mean vertical position of all of the "on" pixels 
9. x2bar = the mean squared horizontal position of all of the "on" pixels in the image
10. y2bar = the mean squared vertical position of all of the "on" pixels in the image 
11. xybar = the mean of the product of the horizontal and vertical position of all of the "on" pixels in the image
12. x2ybar = the mean of the product of the squared horizontal position and the vertical position of all of the "on" pixels
13. xy2bar = the mean of the product of the horizontal position and the squared vertical position of all of the "on" pixels 
14. xedge = the mean number of edges (the number of times an "off" pixel is followed by an "on" pixel, or the image boundary is hit) as the image is scanned from left to right, along the whole vertical length of the image 
15. xedgeycor = the mean of the product of the number of horizontal edges at each vertical position and the vertical position 
16. yedge = the mean number of edges as the images is scanned from top to bottom, along the whole horizontal length of the image
17. yedgexcor = the mean of the product of the number of vertical edges at each horizontal position and the horizontal position

Both decision tree and random forest model is used for prediction.

Decision tree model results:

Test Accuracy: 86.68%
Train Accuracy: 88.34%

Variable "ybar" is the root node for decision tree.

Random Forest model results:

Test Accuracy: 98.48%

In random forest, 'yedge' variable is most important in terms of number of splits. 'xedgeycor' variable is most important in terms of mean reduction in impurity.

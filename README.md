# Epipolar-Geometry (Computer vision)
The goal is to find the epipolar line, which means that when we click at some point in one image, the method has to find the epipolar line of that point in the other image.

In stereo vision (computer vision), epipolar geometry is the geometry that links 3D objects to their 2D projection. This geometry is the underlying projective geometry between two views, which is usually inspired to search for corresponding points of stereo matching. It is unaffected by scene structure and is solely dependent on the cameras’ internal parameters and relative pose. If we use a pinhole camera to take an image, we lose important details, namely the depth image. Also, the image loses how far every point in the image is when the conversion is from a 3D to 2D. Given the problems, it is critical to use different method to obtain depth information, and the solution is to use more than one camera. Our eyes function in a similar manner, where we use two cameras (two eyes), which is known as stereo vision.

Steps </br>
1. Manually obtain 8 corresponding points from the two images stereo1 (left) and stereo2 (right). </br>
The stereo vision approach requires a set of known correspondences to measure the fundamental matrix, and we first need to locate the correspondence points from the two images
(stereo 1 and stereo 2). We could either do it by hand, manually locating 8 corresponding
points, or we could use a function tracker to try to find eight appropriate correspondences
directly from the image data. In our case, we are using the hand-based approach to manually obtain the corresponding points of the two given images.

![image](https://user-images.githubusercontent.com/22916069/194381315-ca5e5b16-0f1c-468b-911b-ccfee4744c06.png)

Figure 1.1: corresponding points

2. Calculate the fundamental matrix with 8 point algorithm using SVD.
The eight-point algorithm is a computer vision algorithm that estimates the fundamental
matrix associated with a stereo camera pair from a series of corresponding image points.
The name of the algorithm comes from the fact that it measures the fundamental matrix
from a set of eight or more equivalent image points.

3. Calculate the Epipoles of two cameras. </br>
The epipole is another critical line to consider. The epipole is the line linking each camera’s center points. On figure 1 where eL and eR are labelled at either end. The points
eL and eR are where the opposing camera’s center-point would appear in the image of
its counterpart know as epipole. It’s also the point of vanishing in the direction of the
baseline (translation). </br>
The epipole properties are:</br>
Fe=0 <br>
Transpose(F)e=0 <n=br>
Where F is the fundamental matrix and e and e’ are the epipoles. The fundamental
matrix F maps a point to its corresponding epipolar line in the other image. Thus, the
epipolar line in the second image of a point x in the first image is l=Fx and, going the
other way, l=transpose(F)x. The epipoles themselves are right and left null vectors, respectively, of F, i.e., Fe=0 and transpose(F)e=0.

4. A method that allows us to see the epipolar line in the right image corresponding to any point in the left image. That means,
if you click one point in the left image you should see the epipolar line in the right image.

Epipolar lines are formed by the intersection of the epipolar plane and the two image planes. The epipolar lines in the image plane have the property of intersecting the baseline at the corresponding epipoles. The epipoles oL and oR are located at infinity when the two image planes are parallel.
The epipolar plane will be used to determine the epipolar line if the camera positions oL and oR, as well as the image point X, are first known. The epipolar line of the image on the right would ideally be located on X’s projection into the image on the right. As a result, a simple knowledge of epipolar geometry enables one to establish a tight connection between image pairs without knowing the scene’s 3D structure.

![image](https://user-images.githubusercontent.com/22916069/194384370-b1efb787-6ff2-434c-88e8-daee4a73decb.png)
<b>Figure 1.2: Epipolar line with obtained corresponding points</b>

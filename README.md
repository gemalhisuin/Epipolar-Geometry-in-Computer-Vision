# Epipolar-Geometry
The goal is to find the epipolar line, which means that when we click at some point in one image, the method has to find the epipolar line of that point in the other image.

In stereo vision, epipolar geometry is the geometry that links 3D objects to their 2D projection. This geometry is the underlying projective geometry between two views, which is usually inspired to search for corresponding points of stereo matching. It is unaffected by scene structure and is solely dependent on the cameras’ internal parameters and relative pose. If we use a pinhole camera to take an image, we lose important details, namely the depth image. Also, the image loses how far every point in the image is when the conversion is from a 3D to 2D. Given the problems, it is critical to use different method to obtain depth information, and the solution is to use more than one camera. Our eyes function in a similar manner, where we use two cameras (two eyes), which is known as stereo vision.

Steps </br>
1. Manually obtain 8 corresponding points from the two images stereo1 (left) and stereo2 (right). </br>
The stereo vision approach requires a set of known correspondences to measure the fundamental matrix, and we first need to locate the correspondence points from the two images
(stereo 1 and stereo 2). We could either do it by hand, manually locating 8 corresponding
points, or we could use a function tracker to try to find eight appropriate correspondences
directly from the image data. In our case, we are using the hand-based approach to manually obtain the corresponding points of the two given images.

![image](https://user-images.githubusercontent.com/22916069/194381315-ca5e5b16-0f1c-468b-911b-ccfee4744c06.png)
Figure 1.1: corresponding points


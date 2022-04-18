# FAST
> Phase encode deep neural network for complex wavefront shaping through multi-core fibers
> 
> Updated April 2022

## Table of Contents
* [General Info](#general-information)
* [Download DNN](#download-dnn)
* [How to use](#how-to-use)
* [Setup](#setup)
* [Contact](#contact)
<!-- * [License](#license) -->


## General Information
- The Matlab code can generate holograms for complex wavefront shaping through a multi-core fiber bundle.
- The deep neural network is pre-trained with MNIST dataset and can be used directly.
- You can read our paper for detailed information [1]. Please cite our paper if you used this code for publication.
- [1] Sun J, Wu J, Koukourakis N, et al. Lensless multicore-fiber microendoscope for real-time tailored light field generation with phase encoder neural network (CoreNet)[J]. arXiv preprint arXiv:2111.12758, 2021.

## Download DNN
- The pre-trained CoreNet can be downloaded at
- https://drive.google.com/file/d/1itj4jtysSo2rxrFa4OSSTneZayGFLq1i/view?usp=sharing

## How to use
- Requirements: Matlab 2017b or later version and at least one Nvidia GPU
- How to run the code?
1. Download and unzip the code
2. Unzip the folder "functions.zip" and "test_images"
3. Download the network file "coreNet.mat" from the link above
4. Copy the ""coreNet.mat" to the folder where you store the code or the matlab path
5. Add the "CoreNet-main" and its subfloders to your Matlab path
6. Run the "coreNet_predict.m"
- Note: the phase reconstruction for the intrinsic phase distortion can take a very long time on a normal laptop, plase be patient.


## Setup
- "Main.m" Main code for the reconstruction
- "prop.m" Numerical propagation function
- "tiltPhase" Generate a tilted phase image for wavefront correction


## Contact
Created by Jiawei Sun (jiawei.sun@tu-dresden.de) from TU Dresden - feel free to contact me!

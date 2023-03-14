# CoreNet
> Phase encode deep neural network for complex wavefront shaping through multi-core fibers
> 
> Updated March 2023

## Structure of the phase encoder deep neural network (CoreNet)
![Structure of the phase encoder deep neural network (CoreNet)](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41598-022-11803-7/MediaObjects/41598_2022_11803_Fig1_HTML.png?as=webp "Figure 1: Structure of the phase encoder deep neural network (CoreNet).")

> 
> 

## Table of Contents
* [General Info](#general-information)
* [Download DNN](#download-dnn)
* [How to use](#how-to-use)
* [Contact](#contact)
<!-- * [License](#license) -->

## General Information
- The Matlab code can generate holograms for complex wavefront shaping through a multi-core fiber bundle.
- The deep neural network is pre-trained with MNIST dataset and can be used directly.
- You can read our paper for detailed information [1]. Please cite our paper if you used this code for publication.
- [1] Sun J, Wu J, Koukourakis N, et al. Real-time complex light field generation through a multi-core fiber with deep learning[J]. Scientific reports, 2022, 12(1): 1-10. https://www.nature.com/articles/s41598-022-11803-7

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
- Note: The network highly demands GPU computation power (NVIDIA RTX A6000 is recommended)


## Contact
Created by Jiawei Sun (jiawei.sun@tu-dresden.de) from TU Dresden - feel free to contact me!

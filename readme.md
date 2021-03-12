# Anisotropic Spectral Manifold Wavelet Descriptor

This is the matlab implementation for the paper '**Anisotropic Spectral Manifold Wavelet Descriptor (ASMWD)**' published in *Computer Graphics Forum*. 

*Qinsong Li, Ling Hu, Shengjun Liu, Dangfu Yang, Xinru Liu. Anisotropic Spectral Manifold Wavelet Descriptor[J]. Computer Graphics Forum, 2021, 40(1): 81–96.*

In this paper, we extend the Spectral graph Wavelet transform to the anisotropic case in manifold based on the anisotropic Laplace-Beltrami Operator (ALBO), termed Anisotropic Spectral Manifold Wavelet Transform (ASMWT). ASMWT allows to comprehensively analyse signals from multiple wavelet diffusion directions on local manifold regions ofthe shape with a series of low-pass and band-pass frequency filters in each direction. Based on the ASMWT coefficients of a very simple signal, the ASMWD is efficiently constructed as a localizable and discriminative multi-scale point descriptor. Since the wavelets used in our descriptor are direction-sensitive and able to robustly reconstruct the signals with a finite number of scales, it makes our descriptor compact, efficient, and **unambiguous under intrinsic symmetry**.

![ASMWD_intrinsic_diss](https://github.com/Qinsong-Li/ASMWD/blob/main/images/ASMWD_intrinsic_diss.jpg)



# How to use this code

1. prepare the shapes to the matlab struct with fields .X, .Y, .Z and .TRIV
2. run matlab code 'run_compute_ASMWD.m '



# Notes

The default parameters are provided in file 'run_compute_ASMWD.m' and an isotropic case of ASMWD is provided in file 'run_compute_ASMWD_isotropic.m' 

If you have any questions, please contack me. [qinsli.cg@foxmail.com](mailto:qinsli.cg@foxmail.com) (Qinsong Li)



# License

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/). For any commercial uses or derivatives, please contact us ([shjliu.cg@csu.edu.cn](mailto:shjliu.cg@csu.edu.cn), [qinsli.cg@foxmail.com](mailto:qinsli.cg@foxmail.com)).



# Acknowledgments

Discretization of ALBO matrix:

S. Melzi, E. Rodolà, U. Castellani and M. M. Bronstein, "Shape Analysis with Anisotropic Windowed Fourier Transform," *2016 Fourth International Conference on 3D Vision (3DV)*, Stanford, CA, 2016, pp. 470-478, doi: 10.1109/3DV.2016.57.

FAUST dataset: http://faust.is.tue.mpg.de/

F. Bogo, J. Romero, M. Loper and M. J. Black, "FAUST: Dataset and Evaluation for 3D Mesh Registration," *2014 IEEE Conference on Computer Vision and Pattern Recognition*, Columbus, OH, 2014, pp. 3794-3801, doi: 10.1109/CVPR.2014.491.




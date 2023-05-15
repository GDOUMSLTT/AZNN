%% initialization
clc;close all;clear;
global r %%gamma
global c1 c2 %%\xi_{1} \xi_{2}
global flag_Noise %%flag: Whether there is noise
global falg_delta %%flag: Whether there is a sudden-noise
global flag_overNoise %%flag: Whether there is out-of-bounds-noise
%%initialization  parameters
r=1; 
c1=2;c2=5;
%% 1、NoNoise
flag_Noise=0;%
falg_delta=0;%
flag_overNoise=1;%
Run_model1;
save('newNoNoise.mat','X');
%% 2、Noise
%1、
flag_Noise=1;%
falg_delta=0;%
flag_overNoise=1;%
Run_model1;
drawfigure;
save('newConstantNoiseB.mat','X');
%2、time-varyingNoise
flag_Noise=2;%
falg_delta=0;%
flag_overNoise=1;%
Run_model1;
drawfigure;
save('newTvNoiseB.mat','X');
%2、randNoise
flag_Noise=3;%
falg_delta=0;%
flag_overNoise=1;%
Run_model1;
drawfigure;
save('newRandNoiseB.mat','X');
%% out-of-bounds
%1、constantNoise
flag_Noise=1;%
falg_delta=0;%
flag_overNoise=3;%
Run_model1;
drawfigure;
save('newConstantNoise.mat','X');
%2、time-varyingNoise
flag_Noise=2;%
falg_delta=0;%
flag_overNoise=3;%
Run_model1;
drawfigure;
save('newTvNoise.mat','X');
%2、randNoise
flag_Noise=3;%
falg_delta=0;%
flag_overNoise=3;%
Run_model1;
drawfigure;
save('newRandNoise.mat','X');
%% 4、DeltNoise
%1、constantNoise
flag_Noise=1;%
falg_delta=1;%
flag_overNoise=1;%
Run_model1;
drawfigure
save('newConstantNoiseDelta.mat','X');
%2、time-varyingNoise
flag_Noise=2;%
falg_delta=1;%
flag_overNoise=1;%
Run_model1;
drawfigure
save('newTvNoiseDelta.mat','X');
%2、randNoise
flag_Noise=3;%
falg_delta=1;%
flag_overNoise=1;%
Run_model1;
drawfigure
save('newRandNoiseDelta.mat','X');
%% different of gamma
flag_Noise=0;%
falg_delta=0;%
flag_overNoise=1;%
Run_model2;
drawfigure2;
save('newNoNoise_r.mat','X');
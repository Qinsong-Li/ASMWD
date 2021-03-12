clear;
close all;
clc;

% add path of this folder and all its subfolders
% addpath(genpath(pwd));

% -----editable parameters--------
% important
n_angles=8; % default 8
num_eigs=100; % default 300
nscales=10; % default 10

% keep it the origin is ok.
alpha=10; % value in [5,20] is ok, default 10;
curv_smooth=10; % default 10 is ok for all shapes

%
param.curv_smooth=curv_smooth;
param.alpha=alpha;
angles=linspace(0,180,n_angles+1);
param.angles=angles(1:end-1);
param.n_eigen=num_eigs;
param.nscales=nscales;

% ------------------------------------------------------------------------
DATA_ROOT_DIR       =fullfile('E:\EG2021_2\FAUST');
SHAPE_DIR           =fullfile(DATA_ROOT_DIR,'shapes');
DESC_DIR            =fullfile(DATA_ROOT_DIR,'descs','ASMWD');

warning off;
mkdir(DESC_DIR);
warning on;

% dispay infos
fprintf('[i] compute ASMWD descriptors:\n');

SHAPES = dir(fullfile(SHAPE_DIR, '*.mat'));
SHAPES = natsort({SHAPES.name}');

for s = 1:length(SHAPES)
    shapename = SHAPES{s};
    fprintf(1, '  %-30s \t', shapename);
    time_start = tic;
    % Load shape
    load(fullfile(SHAPE_DIR, shapename),'shape');
    
%     if exist(fullfile(DESC_DIR, shapename), 'file')
%         fprintf(1, '\t\t file exist...\n ')
%         continue;
%     end
    
    desc=compute_ASMWD(shape,param);
    
    % elasped time
    elapsed_time = toc(time_start);
    fprintf('%3.2fs\n',elapsed_time);
    save(fullfile(DESC_DIR,shapename),'desc');    
    
end
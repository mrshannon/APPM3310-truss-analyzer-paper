#!/bin/sh

MATLAB="matlab-desktop -nodesktop -nosplash"

rm -rf images
mkdir images

$MATLAB << EOF
    addpath('code');
    truss('code/samples/sample_001.json', '-p', '-s');
    save_figure('images/sample_001.pdf');
    close all;
    truss('code/samples/baltimore_truss.json', '-p', '-s');
    save_figure('images/baltimore_truss.pdf');
    close all;
    truss('code/samples/sample_002.json', '-p', '-s');
    save_figure('images/sample_002.pdf');
    close all;
    truss('code/samples/sample_003.json', '-p', '-s');
    save_figure('images/sample_003.pdf');
    close all;
    truss('code/samples/sample_004.json', '-p', '-s');
    save_figure('images/sample_004.pdf');
    close all;
    exit
EOF

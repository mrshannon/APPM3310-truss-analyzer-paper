#!/bin/sh

MATLAB="matlab-desktop -nodesktop -nosplash"

rm -rf images
mkdir images

rm -rf tables
mkdir tables

$MATLAB << EOF
    addpath('code');
    model = truss('code/samples/sample_001.json', '-p', '-s');
    pause(1);
    save_figure('images/sample_001.pdf', 1);
    save_tables('tables/sample_001', model);
    close all;
    model = truss('code/samples/baltimore_truss.json', '-p', '-s');
    pause(1);
    save_figure('images/baltimore_truss.pdf', 1);
    save_tables('tables/baltimore_truss', model);
    close all;
    model = truss('code/samples/sample_002.json', '-p', '-s');
    pause(1);
    save_figure('images/sample_002.pdf', 1);
    save_tables('tables/sample_002', model);
    close all;
    model = truss('code/samples/sample_003.json', '-p', '-s');
    pause(1);
    save_figure('images/sample_003.pdf', 1);
    save_tables('tables/sample_003', model);
    close all;
    model = truss('code/samples/sample_004.json', '-p', '-s');
    pause(1);
    save_figure('images/sample_004.pdf', 1);
    save_tables('tables/sample_004', model);
    close all;
    exit
EOF

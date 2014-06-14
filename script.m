clc,clear;
X11 = [mvnrnd([-5 5],eye(2),20);mvnrnd([5 -5],eye(2),20);mvnrnd([10 0],eye(2),20)];
X12 = [mvnrnd([0 0],eye(2),20);mvnrnd([5 5],eye(2),20);mvnrnd([-5 -5 ],eye(2),20);mvnrnd([15 -5],eye(2),20)];
X1 = [X11 ; X12];
LabelForX1 = [repmat([1 0],rows(X11),1);repmat([0 1],rows(X12),1)];

X21 = [mvnrnd([-5 5],eye(2),20);mvnrnd([5 -5],eye(2),20);mvnrnd([10 0],eye(2),20)];
X22 = [mvnrnd([0 0],eye(2),20);mvnrnd([5 5],eye(2),20);mvnrnd([-5 -5 ],eye(2),20);mvnrnd([15 -5],eye(2),20)];
X2 = [X21 ; X22];
LabelForX2 = [repmat([1 0],rows(X21),1);repmat([0 1],rows(X22),1)];


% This file demonstrates how to use the library by training a neural network on a small version of the MNIST database.

% 2 - Creates a default set of parameters.
parameters;
params.Nh = [2 4]; % Use only one hidden layer for the demo.
params.nIter = 1500; % Only do 10 passes through the data for the demo.
params.save = 0; % Do not save the network on disk for the demo.
params.wdType = 0;
params.startLR = 0.01;
%params.func = 'tanh';

% 3 - Split the dataset into train+valid and test.
data_train = X1;
labels_train = LabelForX1;

data_test = X2;
labels_test = LabelForX2;

% 4 - Train the neural network.
[layers, errors, params, timeSpent] = nnet(data_train, labels_train, params);

% 5 - Test the network using the classification error.
[predicted, errors] = nnetTest(data_test, labels_test, 'class', layers);

% 6 - Display the test error.
fprintf('Test classification error rate: %g%%\n', 100*mean(errors));
% This file demonstrates how to use the library by training a neural network on a small version of the MNIST database.

% 1 - Loads the mnist dataset. If it is not available, print where to download it.
try
	load('mnist_small.mat');
catch
	fprintf('You need to download the MNIST dataset for this demo to work.\nIt is available at http://nicolas.le-roux.name/code/mnist_small.mat\n');
	return;
end

% 2 - Creates a default set of parameters.
parameters;
params.Nh = [2 4]; % Use only one hidden layer for the demo.
params.nIter = 9000; % Only do 10 passes through the data for the demo.
params.save = 0; % Do not save the network on disk for the demo.
params.wdType = 0;
%params.func = 'tanh';

% 3 - Split the dataset into train+valid and test.
data_train = data(1:10000, :);
labels_train = labels(1:10000, :);

data_test = data(10001:end, :);
labels_test = labels(10001:end, :);

% 4 - Train the neural network.
[layers, errors, params, timeSpent] = nnet(data_train, labels_train, params);

% 5 - Test the network using the classification error.
[predicted, errors] = nnetTest(data_test, labels_test, 'class', layers);

% 6 - Display the test error.
fprintf('Test classification error rate: %g%%\n', 100*mean(errors));
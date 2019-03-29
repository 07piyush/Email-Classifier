function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
values = [0.01, 0.03, 0.1, 0.3,  1, 3, 10, 30];
J = zeros(8,8);

% 				function return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               We can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  		 We can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
x1 = [1 2 1]; x2 = [0 4 -1];
for Cvalue=1:8
	for sigValue=1:8
		C=values(Cvalue); sigma = values(sigValue);
		model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
		J(Cvalue,sigValue) = mean( double(svmPredict(model, Xval) ~= yval ));
		end
end
minn = min( min(J) );
[cIndex, sigIndex] = find(J==minn);
C = values(cIndex); sigma = values(sigIndex);
% =========================================================================

end

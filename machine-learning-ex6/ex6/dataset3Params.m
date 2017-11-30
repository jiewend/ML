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

CArry = [0.01;0.03;0.1;0.3;1;3;10;30];
sigmaArry = [0.01;0.03;0.1;0.3;1;3;10;30];
SVMerror = zeros(size(C), size(sigma));
for i = 1:length(CArry),
	for j = 1:length(sigmaArry),
		model = svmTrain(X, y, CArry(i), @(x1, x2) gaussianKernel(x1, x2, sigmaArry(j)));
		predictions = svmPredict(model, Xval);
		SVMerror(i, j) = mean(double(predictions ~= yval));
		fprintf('%f time of %f error : %f\n', (i - 1)*(length(sigmaArry))+j, length(CArry)*length(sigmaArry), SVMerror(i,j));
end,
end,
[CPos, sigmaPos] =find(SVMerror == min(min(SVMerror)));
C = CArry(CPos);
sigma = sigmaArry(sigmaPos);
fprintf('optimal C : %f, sigma : %f ,error : %f\n',C, sigma, min(min(SVMerror)));
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end

function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m, 1) X];
z2 = Theta1 * X'; %25,401 * 401,5000 = 25,5000
a2 = sigmoid(z2);
a2 = a2';
a2 = [ones(size(a2, 1), 1) a2]; % 25,5000----26,5000
z3 = Theta2 * a2'; %10,26 * 26,5000 = 10,5000
a3 = sigmoid(z3);  %10,5000
[M,I]= max(a3', [], 2);%10,5000 ��index
p = I;









% =========================================================================


end

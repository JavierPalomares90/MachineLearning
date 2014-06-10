function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m = size(X,1);
% You need to return the following variables correctly.
idx = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Iterate over all the x's
for i=1:m
    closestCentroid=-1;
    x = X(i,:);
    minDistance = Inf;
    % Iterate over all of the centroids
    for j=1:K
        u= centroids(j,:);
        distance = norm(x-u);
        if(distance < minDistance)
            minDistance = distance;
            closestCentroid = j;
        end
        
    end
    idx(i)=closestCentroid;
end






% =============================================================

end


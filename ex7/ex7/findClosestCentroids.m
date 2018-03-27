function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i=1:rows(X)
    datapoint = X(i,:);
    distance_between_points = -1;
    for j=1:rows(centroids)
        centroid = centroids(j,:);
        # calculate distance and assign indexes
        tmp_dist = norm(datapoint - centroid, 2);
        if (j==1)
            distance_between_points = tmp_dist;
            idx(i) = j;
        elseif (distance_between_points > tmp_dist)
            distance_between_points = tmp_dist;
            idx(i) = j;
        endif 
    endfor
endfor






% =============================================================

end


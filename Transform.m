function patch = Transform(row_num,Cluster1)
    patch = zeros(20);
    for i = 1:20
        for j = 1:20
            patch(i,j) = Cluster1(row_num,(i-1)*20+j);
        end
    end
end
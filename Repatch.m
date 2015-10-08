Cluster_2_patches = zeros(100);
for i = 1:5
    for j = 1:5
    Row_num = 5*(i-1)+j;
    temp_patch = Transform(Row_num,Cluster2);
    for x = (i-1)*20+1 : (i-1)*20+20
        for y = (j-1)*20+1 : (j-1)*20+20
            Cluster_2_patches(x,y) = temp_patch( x-(i-1)*20 , y-(j-1)*20);
        end
    end
    end
end

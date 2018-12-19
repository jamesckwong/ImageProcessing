[y,x] = find(orangeThumbBinary);
Orangexmean = mean(x);
Orangeymean = mean(y);

hold on;
plot(Orangexmean, orangeymean, 'ro', 'MarkerSize', 30);


[y,x] = find(greenRingBinary);
Greenxmean = mean(x);
Greenymean = mean(y);

hold on;
plot(Greenxmean, Greenymean, 'ro', 'MarkerSize', 30);

[y,x] = find(blueMiddleBinary);
Bluexmean = mean(x);
Blueymean = mean(y);

hold on;
plot(Bluexmean, Blueymean, 'ro', 'MarkerSize', 30);

[y,x] = find(redPinkyBinary);
Redxmean = mean(x);
Redymean = mean(y);

hold on;
plot(Redxmean, Redymean, 'ro', 'MarkerSize', 30);

[y,x] = find(yellowIndexBinary);
Yellowxmean = mean(x);
Yellowymean = mean(y);

hold on;
plot(Yellowxmean, Yellowymean, 'ro', 'MarkerSize', 30);

plot([Orangexmean, Yellowxmean] ,[Orangeymean ,Yellowymean], 'g')
plot([Yellowxmean, Bluexmean], [Yellowymean, Blueymean], 'g')
plot([Bluexmean, Greenxmean], [Blueymean, Greenymean], 'g')
plot([Greenxmean, Redxmean], [Greenymean ,Redymean], 'g')
 
% output co-ordinates, output pdist length

pdist([Orangexmean, Yellowxmean], [Orangeymean, Yellowymean])
pdist([Yellowxmean ,Bluexmean], [Yellowymean ,Blueymean])
pdist([Bluexmean ,Greenxmean], [Blueymean, Greenymean])
pdist([Greenxmean, Redxmean], [Greenymean, Redymean])

A = [Orangexmean,Yellowxmean];
B = [Orangeymean, Yellowymean]; 
D = norm(B-A);
## general / useful functions
- use ';' to supress output
- class(person.age)
- size(x)
- help xlsread //read docs

## matrices
``` matlab
my_matrix = [1:10] //1x10 
my_matrix = [1 2; 3 4] //2x2
```

## structs
- obj that contains info abt some type of thing
``` matlab
//create struct by specifying field(s)
person.name = 'sarah';
//init mult values
S = struct('name','Bob', 'email', 'bob@gmail.com')

//add fields dynamically
person.university = 'usc';
isField(person, 'age')
rmfield(person, 'university')
setfield(person, 'gender', 'f')

//nested structs
person.contact.email = 'sarahett@usc.edu'
```

## cells
- can contain arbitrary fields, like an array of indices that don't have to be numbers
- can be an array of structs or different types of objects
``` matlab
my_cell{1} = 'hello world';
my_cell{'A'} = [1, 2; 3 4];
```

## plots
- linspace: create series of values between two endpoints x,y broken into z segments 
```matlab
y = [1 2 4 8 16 32 64 128 256]
x = [0 1 2 3  4  5  6  7  8]
plot(y)
plot(x,y) //must be same length

x = linspace(0, 100, 200)
y = sin(x)
plot(x,y)
y2 = cos(x)
plot(x,y,'*',x,y2,'.',y2,x,'--') //include style type
```
bar plot
```matlab
bar(x)
bar(x,y)
```
histogram
```matlab
x = randn(1000,1);
hist(x)
hist(x,50) //increase bins for more granularity
```
pie
```matlab
pie(x)
```
scatter
- helpful in data analysis for points that are unordered
```matlab
x = linespace(0,2*pi, 1000);
y = 10*sin(x) * randn(1, 1000); //noisy sine wave
scatter(x,y)
```

## .csv
:= comma separated values
1,2,3
4,5,6

```matlab
A = csvread('thisisacsvfile.csv') //csv  -> matrix 

B = eye(4)*5;
csvwrite('new_file.csv', B) //matrix -> csv
```

## .mat
- binary data for matlab (not cross platform)
- load/save workspace into matlab, as opposed to saving each variable to their own csv
```matlab
A = [1 2 3];
B = [1 2];
C = [1]
save('my_workspace.mat');
...
load('my_workspace.mat');
save('my_workspace.mat', 'A', 'B'); //save specific values
```

## subplot
- stack plots
```matlab
x = linspace(0,2*pi,200);
y = sin(x);
z = y + rand(1,100);
subplot(2,1,1)
plot(x,y)
subplot(2,1,2)
plot(x,z)
```

## 3d plots
- for 2d data set
```matlab
z = randn(100,100)
surf(z)
contour(z)
```

## labels
```matlab
x = linespace(0,2*pi, 1000);
y = 10*sin(x) * randn(1, 1000); //noisy sine wave
scatter(x,y)
title('Scatterplot of noisy sine wave');
xlabel('x label')
ylabel('y label')

//label subplot
z = cos(y)
subplot(2,1,1)
plot(x,y)
title('noisy sine wave')
subplot(2,1,2)
plot(x,z)
title('cosine of noisy sine wave')
```

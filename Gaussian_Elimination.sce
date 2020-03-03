//Gaussian Elimination
//Use: To solve system of linear equations

disp('Enter the matrix A');

a11=input("Enter for a11: ");
a12=input("Enter for a12: ");
a13=input("Enter for a13: ");
a21=input("Enter for a21: ");
a22=input("Enter for a22: ");
a23=input("Enter for a23: ");
a31=input("Enter for a31: ");
a32=input("Enter for a32: ");
a33=input("Enter for a33: ");

A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];

disp('Enter the matrix B');

b1=input("Enter for b1: ");
b2=input("Enter for b2: ");
b3=input("Enter for b3: ");

b=[b1;b2;b3];
Aug=[A b];
a=Aug;

disp('The Augmented Matrix is ');
disp(Aug);
n=3; //The value of n can be set to any value depending on the n x n matrix needed

disp('The states of the Matrix is');

for i=2:n
    for j=2:n+1
        a(i,j)=a(i,j)-a(1,j)*a(i,1)/a(1,1);
    end
    a(i,1)=0;
end

disp(a);
for i=3:n
    for j=3:n+1
        a(i,j)=a(i,j)-a(2,j)*a(i,2)/a(2,2);
    end
    a(i,2)=0;
end
disp(a)
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sumk=0;
    for k=i+1:n
        sumk=sumk+a(i,k)*x(k);
    end
    x(i)=(a(i,n+1)-sumk)/a(i,i);
end
disp(x(3),x(2),x(1),'The values of x ,y , z are :');
disp(a(1,1),a(2,2),a(3,3), 'The pivots are ');

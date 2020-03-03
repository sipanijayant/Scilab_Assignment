//LU decomposition
//To solve system of linear equations

format('v',5);
//Input of 3x3 matrix 
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

b=[b1;b2;b3];  //Constant matrix

for l=1:3
    L(l,l)=1;
end
for i=1:3
    for j=1:3
        s=0;
        if j>=i
            for k=1:i-1
                s=s+L(i,k)*U(k,j);
            end
            U(i,j)=A(i,j)-s;
        else
            for k=1:j-1
                s=s+L(i,k)*U(k,j);
            end
            L(i,j)=(A(i,j)-s)/U(j,j);
        end
    end
end

disp('The Upper triangular matrix is :');
disp(U);
disp('The Lower triangular matrix is :');
disp(L);
disp('Product LU =' );
disp(L*U);
disp('This proves A=LU . Now,');
c=inv(L)*b;
x=inv(U)*c;
disp(x,'Solution to the given equations are :');

//Gauss Jordan Method to find Inverse of a matrix
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

n=length(A(1,:));
Aug = [A, eye(n,n)];

disp('The Augmented matrix is:' );
disp(Aug);
//Forward Elimination

for j=1:n-1
    for i=j+1:n
        Aug(i,j: 2*n) = Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n);
    end
end

//Backward Elimination

for j=n:-1:2
    Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:);
end
//Diagnol Normalization
for j=1:n
    Aug(j,:)=Aug(j,:)/Aug(j,j);
end
Inverse_A = Aug(:,n+1:2*n);
disp(Inverse_A, 'The inverse of A is: ');

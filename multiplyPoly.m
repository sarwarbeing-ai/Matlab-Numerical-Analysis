% writing a double For loop
%
% This program will multiply two polynomials together, and represent the resulting
% polynomial via its coefficients.
% All polynomials present in this program are of the form:
% p(x) = a + a1*x + a2*x^2 + ... + an*x^n
% and we will represent this polynomial by a row vector of its coefficients:
%
% c = (a al a2 ... an]
%
% note: this program will essentially mimic the behavior of the built-in "cony"
% command
% first we define two polynomials to be multiplied, specifying their coefficients
% the polynomials will have a random degree between 0 and 3
n = 4;
degree_first = floor(n*rand);
degree_second = floor(n*rand);
% initialize coefficient vectors representing the polynomials to be multiplied
coeffs_first=zeros(1, degree_first+1);
coeffs_second = zeros(1, degree_second+1);
% use "for" loops to fill in the values of the coefficient vectors in a random
% fashion
for i=0:degree_first
coeffs_first(i+1) = -10+floor(21*rand);
end

for i=0:degree_second
coeffs_second(i+1) = -10+floor(21*rand);
end


% specify the degree of the product polynomial
degree_product = degree_first + degree_second;
% initialize the coefficient vector of the product polynomial
coeffs_product = zeros(1, degree_product+1);
% now we write the double 'for' loop multiplying the two polynomials together:
for i=0:degree_product
for j=max(0,i-degree_second):min(i, degree_first)
    
    % multiplied coeffs_first(j+1) with the element
    % coeffs_second(i-j+1)
    % i+1 as indexing in matlab starts from 1
    % formula:
    % product(i+1)=sum(coeffs_first(j+1)*coeffs_second(i-j+1)),sum goes for j
coeffs_product(i+1) = coeffs_product(i+1) + coeffs_first(j+1)*coeffs_second(i-j+1); % Modified
end

end

% check if our polynomial multiplication agrees with the built-in function for it:
if coeffs_product==conv(coeffs_first, coeffs_second)
disp('success!');
else
disp('failure. ..')
end
% output the polynomial multiplication in a readable format, using character
% strings
char_string_poly_first=num2str(coeffs_first(1));

for i=1:degree_first

    
if coeffs_first(i+1)<0
p = '';
else
p = '+';
end

% [] use for concatenation of strings
char_string_poly_first =[char_string_poly_first p ...
num2str(coeffs_first(i+1)) 'x^' num2str(i)];
end

char_string_poly_second = num2str(coeffs_second(1));
for i=1: degree_second
if coeffs_second(i+1)<0
p = '';
else
p = '+';
end

char_string_poly_second=[char_string_poly_second p ...
num2str(coeffs_second(i+1)) 'x^' num2str(i)];
end

char_string_poly_product = num2str(coeffs_product(1));
for i=1: degree_product
if coeffs_product(i+1)<0
p = '';
else
p = '+';
end

char_string_poly_product = [char_string_poly_product p ...
num2str(coeffs_product(i+1)) 'x^' num2str(i)];
end

disp(['(' char_string_poly_first ') * (' char_string_poly_second ') =' char_string_poly_product])
    
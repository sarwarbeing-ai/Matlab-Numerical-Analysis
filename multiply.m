% writing a double For loop
%
% This program will multiply two polynomials together, and represent the resulting
% polynomial via its coefficients.
% All polynomials present in this program are of the form:
% p(x) = a + a1*x + a2*x^2 + ... + an*x^n
and we will represent this polynomial by a row vector of its coefficients:
%
% c = (a al a2 ... an]
%
% note: this program will essentially mimic the behavior of the built-in "cony"
% command
% first we define two polynomials to be multiplied, specifying their coefficients
% the polynomials will have a random degree between 0 and 3
n = 4;
degree_first = floor (n*rand);
degree_second = floor (n*rand);
% initialize coefficient vectors representing the polynomials to be multiplied
coeffs_first zeros(1, degree_first+1);
coeffs_second = zeros(1, degree_second+1);
% use "for" loops to fill in the values of the coefficient vectors in a random
fashion
for i=0: degree_first
coeffs_first(i+1) = -10+floor (21*rand);
endfor
for i=0: degree_second
coeffs_second(i+1) = -10+floor (21*rand);
endfor

% specify the degree of the product polynomial
degree_product = degree_first + degree_second;
% initialize the coefficient vector of the product polynomial
coeffs_product = zeros(1, degree_product+1);
% now we write the double 'for' loop multiplying the two polynomials together:
for i=0: degree_product
for j=max(0,i-degree_second) : min(i, degree_first)
coeffs_product(i+1) = coeffs_product(i+1) + 0; % MODIFY ONLY this line
endfor
endfor
% check if our polynomial multiplication agrees with the built-in function for it:
if coeffs_product == conv(coeffs_first, coeffs_second)
disp('success!');
else
disp('failure. ..')
endir
% output the polynomial multiplication in a readable format, using character
strings
char_string_poly_first = num2str(coeffs_first(1));
for i=1: degree_first

    
    
# Root Finding
falsePosition.m estimates the root of a givin function using the False Position Method.

Inputs Include
* func - Function being Evaluated
* Xl - Lower Guess 
* Xu - Upper Guess
* es - Desired Relative error (defaults to 0.0001%)
* maxit - Maximum number of iterations to use (defaults to 20)
* varargin - additional parameters used by the function

Outputs Include
* root - Estimated root location
* fx - Function Evaluated
* ea - Approximate Relative err0r (%)
* iter - Number of Iterations 

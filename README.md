# Haskell - Algorithmic Problems

A collection of advanced mathematical and algorithmic problem solutions implemented in Haskell. This project was developed for a Programming Languages course to demonstrate the practical application of the functional programming paradigm and custom implementations of basic list operations.

## Implemented Tasks

The following scripts have been implemented as part of this project:

* **Right-Angled Triangles (`max-triplets.hs`):** Analyzes and decomposes a given number into the maximum number of unique Pythagorean triples that can form a right-angled triangle.
* **Palindromic Products (`palindromes.hs`):** An algorithm that finds the largest possible palindrome created by multiplying two numbers of a specified length.
* **B-Smooth Numbers (`b-smooth.hs`):** A script that calculates the count of B-smooth numbers (numbers whose prime factors are all less than or equal to a given value B) within a specified range.

## Architecture and Constraints

In accordance with strict project requirements, standard auxiliary modules such as `Data.List` or `Data.Array` were completely avoided in the code. 

All necessary tools for list manipulation were written from scratch in a custom **`Utility.hs`** module. It contains fully functional, custom implementations of methods such as calculating length, mapping, verifying conditions, and reversing sequences.

## Setup and Compilation

This project requires the GHC (Glasgow Haskell Compiler) to be installed. Each main file executes independently but requires the auxiliary module to be linked during compilation.

1. Clone the repository to your local machine.
2. Open a terminal in the project directory.
3. Compile the selected task by linking it with the utility module, for example:
   ```bash
   ghc max-triplets.hs Utility.hs -o max-triplets
4. Run the compiled executable, passing the appropriate numerical arguments:
   ```bash
    ./max-triplets 100

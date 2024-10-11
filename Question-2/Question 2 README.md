# Question 2: River Crossing Problem

## Problem Statement

A man, a woman and two children had to go to the opposite bank of a river using a boat. The man and the woman weighed 80 kg each and the children weighed 30 kg each. Given that the boat can carry up to 100 kg and that everyone can drive a boat, write a Prolog program to find how all four can cross the river with the boat.

## Approach

1. Define the weights of the individuals and the boat's capacity.
2. Implement rules for valid boat movements, considering weight constraints.
3. Use a path-finding algorithm to determine the sequence of moves to get everyone across the river.

## Solution

The Prolog program `river_crossing.pl` contains the following key components:

1. Facts:

   - Define weights for the man, woman, and children.
   - Set the boat's capacity to 100 kg.

2. Rules:

   - Implement `valid_weight/2` to check individual weights.
   - Create `total_weight/2` to calculate the total weight of passengers.
   - Use `valid_boat/1` to ensure the boat's weight limit is not exceeded.

3. Move Predicate:

   - Implement `move/3` to define valid movements across the river.

4. Path Finding:

   - Use `path/3` to find the solution path from the initial state to the goal state.

5. Main Predicate:
   - Implement `solve_river_crossing/0` to set up the initial and goal states and find the solution.

## How to Run

1. Ensure you have SWI-Prolog installed on your system.
2. Navigate to the `question2` directory.
3. Run the Prolog file using the command: `swipl -s river_crossing.pl`

The program will output a sequence of moves that solves the river crossing problem.

## Explanation

The program works by:

1. Defining all possible valid moves (e.g., man and child crossing, woman and child crossing, etc.).
2. Using a recursive path-finding algorithm to explore different combinations of moves.
3. Backtracking when an invalid state is reached (e.g., exceeding boat capacity).
4. Continuing until a sequence of moves is found that gets everyone to the other side of the river.

The solution ensures that:

- The boat never carries more than 100 kg.
- Everyone can drive the boat.
- All four people end up on the opposite bank.

The output will show a step-by-step sequence of moves to successfully transport all four people across the river.

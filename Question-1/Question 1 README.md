# Question 1: Family Riddle

## Problem Statement

A popular children's riddle is "Brothers and sisters have I none, but that man's father is my father's son." Use the rules of the family domain (Section 8.3.2 on page 301 in the Textbook) to find who that man is using a Prolog program.

## Approach

1. Define facts about the family relationships mentioned in the riddle.
2. Create rules for son and grandson relationships.
3. Implement a query to solve the riddle based on the given information.

## Solution

The Prolog program `family_riddle.pl` contains the following key components:

1. Facts:

   - The grandfather is the father of the speaker's father.
   - The father is the father of the speaker.
   - The father is also the father of "that man".

2. Rules:

   - Define the son relationship.
   - Define the grandson relationship.

3. Query:
   - Implement a `solve_riddle/1` predicate to find the solution.

The solution to the riddle is that "that man" is the speaker's son.

## How to Run

1. Ensure you have SWI-Prolog installed on your system.
2. Navigate to the `question1` directory.
3. Run the Prolog file using the command: `swipl -s family_riddle.pl`

The program will output the solution to the riddle.

## Explanation

The riddle is solved by understanding that:

- The speaker has no brothers or sisters.
- "That man's father" is "my father's son".
- Since the speaker has no siblings, "my father's son" must be the speaker himself.
- Therefore, the speaker is the father of "that man".
- Thus, "that man" is the speaker's son.

The Prolog program models these relationships and uses logical inference to determine the correct answer.

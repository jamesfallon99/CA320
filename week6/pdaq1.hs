type Transition = ((Int,String,String),(Int,String)) --where in the first tuple (Int,String,String), the Int gives the current state, the first String gives the next character of the input 
--(or the empty string if the transition does not consume the next character of the input), and the second String gives the character at the top of the stack 
--(or the empty string if the transition does not pop the top character off the stack). In the second tuple of a transition (Int,String), 
--the Int gives the new state and the String gives the new character to be pushed on to the top of the stack (or the empty string if no character is pushed).

type PDA = (Int, [Int], [Transition]) --where the Int gives the start state, the [Int] gives the accepting states, and the [Transitions] gives the transitions of the pushdown automaton

type Configuration = (Int,String,String) -where the Int is the current state (this should be the initial state for the starting configuration), the first String is the remaining input 
--(this should be the initial input for the starting configuration), and the second String is the contents of the stack (this should be the empty string for the starting configuration).

data Result = Accept | Reject deriving Show --This indicates whether or not the initial input string is accepted or rejected by the pushdown automaton.

run :: PDA -> String -> Result --where the PDA gives the definition of the pushdown automaton, the String gives the input string, and the Result gives the result of running the pushdown automaton 
--on the input string.
run  (start, end, transition) [] = Reject --([]-A String is a list of characters).
run (start, end, transition) (head:tail)
    | end
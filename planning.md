# Classes: Game, Players, Current_Round

# Game
- initialize the players and round

- game loop
  - checks the scores as the loop condition
  - if all player lives > 0, ask the question and check the answer
  - if any player lives = 0, end loop, and print the winner msg/final score/goodbye

# Player
- players name - state
- lives (3) - state
- decrease lives  - method

# Current_Round
- initialize players for the round

- generator 2 numbers and sum - method

- ask the question - method
  - take 1 arg (player)
  - generates the numbers and sum
  - asks the question
  - gets the user answer

- check the answer - method
  - take 1 arg (player)
  - check user answer = sum ?
  - if yes, print "your right" msg + show score + print new turn
  - if no, print "your wrong" msg + decrease life + show scores + print new turn

* contains the user input








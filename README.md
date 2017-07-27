# Poker Game

The world's simplest poker.

## Requirements

This game can be played with 2 or more players.
Immediately after the cards are dealt, the player with the highest hand wins!

## Installation

- **Clone this repo**
```
$ git clone https://github.com/exchai93/poker_game.git
$ cd poker_game
```
- **Install dependencies with Bundle (if you have not already)**
```
$ gem install bundler
$ bundle install
```

- **Make sure dependencies are up to date**
```
$ bundle update
```

- **Run application**
```
$ ruby './lib/poker_game.rb'
```

## Program should output like this

![poker game](/public/images/poker_game_output.png)

## Technologies

- Ruby v2.4.0
- RSpec v3.6.0 (Testing framework)

## Approach

- **Planning:** Focusing on agile and Object Orientated Design, I broke down the specification into smaller issues to write [user stories](#User Stories). Domain modelling enabled me to identify 'noun' and 'verb' relationships. Diagramming aided in visualising my thought process.

- **Test Driven Development:**

![rspec screenshot](/public/images/rspec_test_results.png)

- **Refactoring:**

## MVP User Stories
```
As a player
So that I can play poker
I want to input how many players there are
```
```
As a player
So that the deck of cards are randomised
I want the cards to be shuffled
```
```
As a player
So that I can start playing poker
I want each player to be dealt five cards
```
```
As a player
So that a winner can be declared
I want to calculate the score for each hand
```
```
As a player
So that the score for each hand is calculated
I want to sum the face value of each hand
```
```
As a player
So that I know who the winner is
I want the program to output which player has won
```
```
As a player
So that the game can be played correctly
I want the game to start only when a valid number of players is inputted (2 - 5)
```

## Future improvements

If I had more time, I would have focused on adding more features according to the bonus features user stories below.

## Bonus features User Stories
```
As a player
So that the user interface can be interactive
I want to input variables and have each player's hand and value displayed
```
```
As a player
So that I can view my hand in order after dealing
I want it to be sorted using card suit followed by value
```
```
As a player
So that bonus points can be given for each pair
I want to score 10 points
```
```
As a player
So that bonus points can be given for each three of a kind
I want to score 20 points
```
```
As a player
So that bonus points can be given for each straight
I want to score 40 points
```
```
As a player
So that a winner can be determined in a tie-breaker
I want to use Hearts suit
```

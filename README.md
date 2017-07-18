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
```

## Technologies

- Ruby v2.4.0
- RSpec v3.6.0

## Approach

- **Planning:** Focusing on agile and Object Orientated Design, I broke down the specification into smaller issues to write [user stories](#User Stories). Domain modelling enabled me to identify 'noun' and 'verb' relationships. Diagramming aided in visualising my thought process.

- **Test Driven Development:**

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
I want an error when an impossible number of players is inputted (i.e. 0 or 1)
```
```
As a player
So that the correct number of cards are dealt
A maximum of 4 cards for each value should be dealt at a time
(WIP)
```

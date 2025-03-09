//
//  Game.swift
//  Apple Pie
//
//  Created by Susan Murthy on 3/9/25.
//  NOTE: Actually created by Kieran Murthy using Susan Murthy's computer

import Foundation

struct Game {
    var word: String
    var incorrectMovesAllowed: Int
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character] = []
    var correctGuesses: Int = 0
    
    init(word: String, incorrectMovesAllowed: Int) {
        self.word = word
        self.incorrectMovesAllowed = incorrectMovesAllowed
        incorrectMovesRemaining = incorrectMovesAllowed
    }
    
    func calculateScore() -> Int {
        return (correctGuesses + incorrectMovesRemaining) * (8 - incorrectMovesAllowed)
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        } else {
            correctGuesses += 1
        }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord.append(letter)
            } else {
                guessedWord.append("_")
            }
        }
        return guessedWord
    }
}

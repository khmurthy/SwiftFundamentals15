//
//  ViewController.swift
//  Apple Pie
//
//  Created by Susan Murthy on 3/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords: [String] = ["apple", "banana", "cherry", "dragonfruit", "pineapple", "mango", "orange", "grape", "strawberry", "blueberry", "blackberry", "kiwi", "peach", "plum", "apricot", "avocado", "lemon", "lime", "lychee", "mango", "papaya", "pineapple", "raspberry", "watermelon", "tennis", "football", "baseball", "soccer", "badminton", "hockey", "cricket", "cat", "dog", "sheep", "horse", "parrot", "canary", "eagle", "dolphin", "shark", "octopus", "jellyfish", "deer"]
    
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var totalScore = 0
    
    var currentGame: Game!
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesAllowed: incorrectMovesAllowed)
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
        
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses), Score: \(totalScore)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        correctWordLabel.text = addSpacesToString(currentGame.formattedWord)
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
            updateUI()
            newRound()
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
            totalScore += currentGame.calculateScore()
            updateUI()
            newRound()
        } else {
            updateUI()
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    func addSpacesToString(_ word: String) -> String {
        var letters = [String]()
        for letter in word {
          letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        return wordWithSpacing
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    
}


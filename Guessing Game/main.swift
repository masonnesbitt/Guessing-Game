

import Foundation
var randomNumber = Int(arc4random_uniform(99)) + 1
var tries = 0
var counter = 0
var playAgain = false
var guessedNumber: Int? = nil

//full repeat of game
repeat{
    tries += 5
    print ("Please enter a number between 1 and 100.")
     while counter < tries {
        print("You have \(tries - counter) tries remaining.")
        
        repeat {
            
            let input = readLine()!
            
            if let number = Int(input) {    //set input to guessedNumber
                guessedNumber = number
            } else {
                print("No Number Entered.")
                guessedNumber = nil
            }
        } while guessedNumber == nil
        
        guard let guessedNumber = guessedNumber else{  //unwrap guessedNumber for outcome statements
            print("No Number Entered")
            fatalError()
        }

        if guessedNumber < 100 && guessedNumber > 1 {       //between 1 and 100
        
            if guessedNumber > randomNumber {
                print("Too High. Please Try Again")
                counter += 1
            }

            if guessedNumber < randomNumber {                   //outcomes
                print("Too Low. Please Try Again.")
                counter += 1
            }
            
            if guessedNumber == 7 {
                print("My lucky number. Not yours.")
            }

            if guessedNumber == randomNumber {
                print("You Win Sucka.")
            
            }
        }   else {
                print("Need Number between 1 and 100")
            }
        }
    if counter == tries {
        print("Sorry you suck. The correct number was \(randomNumber). Would you like to play again?")
        print("Type \"Yes\" to restart or any key to quit.")
        
    let input = readLine()!
    
        if input.lowercased() == "yes" {
            playAgain = true                            //play again
        } else {                                        //playAgain = input ==
            playAgain = false
        }
        
        }
} while playAgain

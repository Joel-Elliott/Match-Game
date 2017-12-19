//
//  CardModel.swift
//  Match Game
//
//  Created by Joel Elliott on 12/16/17.
//  Copyright © 2017 Joel Elliott. All rights reserved.
//

import Foundation

class CardModel {
    
    
    func getCards() -> [Card] {
        
        //Declare an array to store generated cards
        var generatedCardsArray = [Card]()
        
        //Randomly generate pairs of cards
        for _ in 1...8 {
            //get random number
            let randomNumber = arc4random_uniform(13) + 1
            //log number
            print(randomNumber)
            
            //Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardOne)
            //Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardTwo)
            
            //OPTIONAL: Make it so we only have unique pairs of cards
        }
        //TODO: randomize array
        
        //return array
        return generatedCardsArray
    }
    
    
    
    
}

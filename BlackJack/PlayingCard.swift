//
//  PlayingCard.swift
//  BlackJack
//
//  Created by Sameer Totey on 2/8/15.
//  Copyright (c) 2015 Sameer Totey. All rights reserved.
//

import Foundation

class PlayingCard: NSObject {
    // nested Suit enumeration
    enum Suit: String {
        case Spades = "♠️", Hearts = "♥️", Diamonds = "♦️", Clubs = "♣️"
        
        static let allSuits = ["♠️", "♥️", "♦️", "♣️"]
    }
    
    // nested Rank enumeration
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        var shortDescription: String {
            switch self {
            case .Ace:
                return "A"
            case .Jack:
                return "J"
            case .Queen:
                return "Q"
            case .King:
                return "K"
            default:
                return "\(rawValue)"
            }            
        }
    }
    
    // BlackjackCard properties and methods
    let rank: Rank, suit: Suit
    override var description: String {
        var output = "suit is \(suit.rawValue),"
        switch rank {
        case .Two:
            output += " rank is Two"
        case .Three:
            output += " rank is Three"
        case .Four:
            output += " rank is Four"
        case .Five:
            output += " rank is Five"
        case .Six:
            output += " rank is Six"
        case .Seven:
            output += " rank is Seven"
        case .Eight:
            output += " rank is Eight"
        case .Nine:
            output += " rank is Nine"
        case .Ten:
            output += " rank is Ten"
        case .Jack:
            output += " rank is Jack"
        case .Queen:
            output += " rank is Queen"
        case .King:
            output += " rank is King"
        case .Ace:
            output += " rank is Ace"
        }
        return output
    }
    
    required init (rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
        super.init()
    }

}

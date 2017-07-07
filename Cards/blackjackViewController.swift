//
//  blackjackViewController.swift
//  Cards
//
//  Created by John Colley on 7/6/17.
//  Copyright © 2017 John Colley. All rights reserved.
//

import UIKit

class blackjackViewController: UIViewController {
    
    @IBOutlet weak var playerHandSuit1: UIImageView!
    @IBOutlet weak var playerHandValue1: UILabel!
    @IBOutlet weak var playerHandSuit0: UIImageView!
    @IBOutlet weak var playerHandValue0: UILabel!
    
    @IBOutlet weak var dealerHandSuit1: UIImageView!
    @IBOutlet weak var dealerHandValue1: UILabel!
    @IBOutlet weak var dealerHandCardback1: UIImageView!
    @IBOutlet weak var dealerHandSuit0: UIImageView!
    @IBOutlet weak var dealerHandValue0: UILabel!
    @IBOutlet weak var dealerHandCardback0: UIImageView!
    
    @IBOutlet weak var playDeckBack: UIImageView!
    @IBOutlet weak var playDeckCard: UIImageView!
    
    @IBOutlet weak var hitPileCard0: UIImageView!
    @IBOutlet weak var hitPileCardback0: UIImageView!
    @IBOutlet weak var hitPileValue0: UILabel!
    @IBOutlet weak var hitPileSuit0: UIImageView!
    @IBOutlet weak var hitPileValue1: UILabel!
    @IBOutlet weak var hitPileSuit1: UIImageView!
    @IBOutlet weak var hitPileCardback1: UIImageView!
    @IBOutlet weak var hitPileCard1: UIImageView!
    @IBOutlet weak var hitPile1: UIView!
    @IBOutlet weak var hitPileSuit2: UIImageView!
    @IBOutlet weak var hitPileCardback2: UIImageView!
    @IBOutlet weak var hitPileCard2: UIImageView!
    @IBOutlet weak var hitPileValue2: UILabel!
    @IBOutlet weak var hitPileSuit3: UIImageView!
    @IBOutlet weak var hitPileValue3: UILabel!
    @IBOutlet weak var hitPileCardback3: UIImageView!
    @IBOutlet weak var hitPileCard3: UIImageView!
    @IBOutlet weak var hitPileValue4: UILabel!
    @IBOutlet weak var hitPileSuit4: UIImageView!
    @IBOutlet weak var hitPileCardback4: UIImageView!
    @IBOutlet weak var hitPileCard4: UIImageView!
    @IBOutlet weak var hitPileValue5: UILabel!
    @IBOutlet weak var hitPileSuit5: UIImageView!
    @IBOutlet weak var hitPileCardback5: UIImageView!
    @IBOutlet weak var hitPileCard5: UIImageView!
    @IBOutlet weak var hitPileValue6: UILabel!
    @IBOutlet weak var hitPileSuit6: UIImageView!
    @IBOutlet weak var hitPileCardback6: UIImageView!
    @IBOutlet weak var hitPileCard6: UIImageView!
    @IBOutlet weak var statusMessage: UIButton!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var bustedButton: UIButton!
    @IBOutlet weak var stayButton: UIButton!
    
    
    @IBAction func passButtonTapped(_ sender: UIButton) {
        dealerTurn()
    }
    
    @IBAction func bustButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func hitButtonTapped(_ sender: UIButton) {
        if hitPileCard0.isHidden == true {
            let hitPile0Card = deck.deal()
            hitPileValue0.text = String(hitPile0Card.numerical_value)
            hitPileSuit0.image = cardPlay.getSuitImage(suit: hitPile0Card.suit)
            hitPileCard0.isHidden = false
            hitPileValue0.isHidden = false
            hitPileSuit0.isHidden = false
        } else if hitPileCard1.isHidden == true {
            let hitPile1Card = deck.deal()
            hitPileValue1.text = String(hitPile1Card.numerical_value)
            hitPileSuit1.image = cardPlay.getSuitImage(suit: hitPile1Card.suit)
            hitPileCard1.isHidden = false
            hitPileValue1.isHidden = false
            hitPileSuit1.isHidden = false
            hitPile1.isOpaque = true
        } else if hitPileCard2.isHidden == true {
            let hitPile2Card = deck.deal()
            hitPileValue2.text = String(hitPile2Card.numerical_value)
            hitPileSuit2.image = cardPlay.getSuitImage(suit: hitPile2Card.suit)
            hitPileCard2.isHidden = false
            hitPileValue2.isHidden = false
            hitPileSuit2.isHidden = false
        }  else if hitPileCard3.isHidden == true {
            let hitPile3Card = deck.deal()
            hitPileValue3.text = String(hitPile3Card.numerical_value)
            hitPileSuit3.image = cardPlay.getSuitImage(suit: hitPile3Card.suit)
            hitPileCard3.isHidden = false
            hitPileValue3.isHidden = false
            hitPileSuit3.isHidden = false
        }  else if hitPileCard4.isHidden == true {
            let hitPile4Card = deck.deal()
            hitPileValue4.text = String(hitPile4Card.numerical_value)
            hitPileSuit4.image = cardPlay.getSuitImage(suit: hitPile4Card.suit)
            hitPileCard4.isHidden = false
            hitPileValue4.isHidden = false
            hitPileSuit4.isHidden = false
        }  else if hitPileCard5.isHidden == true {
            let hitPile5Card = deck.deal()
            hitPileValue5.text = String(hitPile5Card.numerical_value)
            hitPileSuit5.image = cardPlay.getSuitImage(suit: hitPile5Card.suit)
            hitPileCard5.isHidden = false
            hitPileValue5.isHidden = false
            hitPileSuit5.isHidden = false
        }  else if hitPileCard6.isHidden == true {
            let hitPile6Card = deck.deal()
            hitPileValue6.text = String(hitPile6Card.numerical_value)
            hitPileSuit6.image = cardPlay.getSuitImage(suit: hitPile6Card.suit)
            hitPileCard6.isHidden = false
            hitPileValue6.isHidden = false
            hitPileSuit6.isHidden = false
            sender.isEnabled = false
        }
        
        checkStatus()
    }
    
    //Global vars
    var deck = Deck()
    var playerHand = [Card]()
    var dealerHand = [Card]()
    var cardPlay = ViewController()
    var dealerHold = false
    var playerHold = false
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        deck = deck.createNewShuffledDeck()
        initGame()
    }
    
    @IBAction func statusButtonTapped(_ sender: UIButton) {
        sender.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initGame()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initGame() {
        playerHand.append(deck.deal())
        dealerHand.append(deck.deal())
        playerHand.append(deck.deal())
        dealerHand.append(deck.deal())

        playerHandValue0.text = String(playerHand[0].numerical_value)
        playerHandSuit0.image = cardPlay.getSuitImage(suit: playerHand[0].suit)
        playerHandValue1.text = String(playerHand[1].numerical_value)
        playerHandSuit1.image = cardPlay.getSuitImage(suit: playerHand[1].suit)
        
        dealerHandValue0.text = String(dealerHand[0].numerical_value)
        dealerHandSuit0.image = cardPlay.getSuitImage(suit: dealerHand[0].suit)
        dealerHandValue1.text = String(dealerHand[1].numerical_value)
        dealerHandSuit1.image = cardPlay.getSuitImage(suit: dealerHand[1].suit)
        
        dealerHandCardback0.isHidden = true
        dealerHandSuit0.isHidden = false
        dealerHandValue0.isHidden = false
        
        dealerHandCardback1.isHidden = false
        dealerHandSuit1.isHidden = true
        dealerHandValue1.isHidden = true
        
        hitPileValue0.isHidden = true
        hitPileSuit0.isHidden = true
        hitPileCard0.isHidden = true
        hitPileValue1.isHidden = true
        hitPileSuit1.isHidden = true
        hitPile1.isOpaque = false
        hitPileCardback1.isHidden = true
        hitPileCardback0.isHidden = true
        hitPileCard1.isHidden = true
        hitPileSuit2.isHidden = true
        hitPileCardback2.isHidden = true
        hitPileCard2.isHidden = true
        hitPileValue2.isHidden = true
        hitPileSuit3.isHidden = true
        hitPileValue3.isHidden = true
        hitPileCardback3.isHidden = true
        hitPileCard3.isHidden = true
        hitPileValue4.isHidden = true
        hitPileSuit4.isHidden = true
        hitPileCardback4.isHidden = true
        hitPileCard4.isHidden = true
        hitPileValue5.isHidden = true
        hitPileSuit5.isHidden = true
        hitPileCardback5.isHidden = true
        hitPileCard5.isHidden = true
        hitPileValue6.isHidden = true
        hitPileSuit6.isHidden = true
        hitPileCardback6.isHidden = true
        hitPileCard6.isHidden = true
        
        checkStatus()
    }
    
    func dealerTurn(){
        checkStatus()
    }
    
    func checkStatus(){
        let scores = getScores()
        let playerTotal = scores[0]
        let dealerTotal = scores[1]
        
        print("Player Score: \(playerTotal)")
        print("Dealer Score: \(dealerTotal)")
        
        if playerTotal > 21 {
            gameStatus(status: "BUSTED")
        }
        
        if dealerTotal > 21 {
            gameStatus(status: "WIN! (DEALER BUSTED)")
        }
        
        if playerTotal == 21 {
            if dealerTotal == 21 {
                gameStatus(status: "DRAW")
            } else {
                gameStatus(status: "WIN")
            }
        }
        
        if dealerTotal >= 17 {
            dealerHold = true
        }
        
        if dealerHold == true && playerHold == true {
            if playerTotal > dealerTotal {
                gameStatus(status: "WIN")
            } else if dealerTotal > playerTotal {
                gameStatus(status: "LOSE")
            } else {
                gameStatus(status: "DRAW")
            }
        }
    }
    
    func gameStatus(status: String) {
        if status == "DRAW" {
            
        } else if status == "WIN" {
            

        } else if status == "LOSE" {
            
        } else if status == "WIN! (DEALER BUSTED)" {
            
        }
        dealerHandValue1.isHidden = false
        dealerHandSuit1.isHidden = false
        dealerHandCardback1.isHidden = true
        showMsg(status: status)
    }
    
    func showMsg(status: String) {
        statusMessage.setTitle(status, for: .normal)
        statusMessage.isHidden = false
    }
    
    func getScores() -> [Int] {
        // Add up any visible hitPile card values
        var hitPileTotal = 0
        for case let label as UILabel in self.view.subviews {
            if label.tag == 1 && label.isHidden == false {
                hitPileTotal += Int(label.text!)!
            }
        }
        print("Hit Pile Total: \(hitPileTotal)")
        
        // Calculate player and dealer card totals
        let playerTotal = Int(playerHandValue0.text!)! + Int(playerHandValue1.text!)! + hitPileTotal
        let dealerTotal = Int(dealerHandValue0.text!)! + Int(dealerHandValue1.text!)! + hitPileTotal
        
        return [playerTotal, dealerTotal]
    }
}

//
//  ViewController.swift
//  Cards
//
//  Created by John Colley on 7/5/17.
//  Copyright © 2017 John Colley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var hand = [Card]()
    var deck = Deck()
    var curCard = 0

    @IBOutlet weak var currentCardNumHand: UILabel!
    @IBOutlet weak var numCardsLeftHand: UILabel!
    @IBOutlet var cardVal: [UILabel]!
    @IBOutlet var cardSuit: [UIImageView]!
    @IBOutlet weak var deckRemaining: UILabel!
    @IBOutlet weak var NextCardButton: UIButton!
    @IBOutlet weak var PrevCardButton: UIButton!
    @IBOutlet weak var DrawCardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 1...5{
            draw()
        }
        
        PrevCardButton.isHidden = true
        currentCardNumHand.text = "1"
        numCardsLeftHand.text = String(hand.count)
        deckRemaining.text = String(deck.cards.count)
        updateCardValAndSuit(idx:curCard)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func draw(_ sender: UIButton?=nil){
        if deck.cards.count > 0 {
            if NextCardButton.isHidden == true {
                NextCardButton.isHidden = false
            }
            hand.append(deck.deal())
            deckRemaining.text = String(deck.cards.count)
            if deck.cards.count == 0 {
                sender?.isEnabled = false
            }
        }
    }
    
    func discard(suit: String, value: String) -> Bool {
        for i in 0...hand.count-1 {
            if (String(describing: hand[i].suit) == suit && hand[i].value == value) {
                hand.remove(at: i)
                return true
            }
        }
        return false
    }
    
    func updateCardValAndSuit(idx: Int){
        if idx <= hand.count - 1 {
            let val = hand[idx].value
            let suit = hand[idx].suit
            cardVal[0].text = val
            cardVal[1].text = cardVal[0].text
            cardSuit[0].image = getSuitImage(suit: suit)
            cardSuit[1].image = cardSuit[0].image
            cardSuit[2].image = cardSuit[0].image
        }
    }
    
    func getSuitImage(suit: Suit) -> UIImage {
        switch suit {
            case .Hearts:
                return #imageLiteral(resourceName: "hearts")
            case .Clubs:
                return #imageLiteral(resourceName: "clubs")
            case .Diamonds:
                return #imageLiteral(resourceName: "diamonds")
        default:
                return #imageLiteral(resourceName: "spades")
        }
    }
    
    @IBAction func nextCard(_ sender: UIButton) {
        print("Next Card: \(curCard)")
        PrevCardButton.isHidden = false
        
        if curCard <= hand.count - 1 {
            sender.isHidden = false
            let nextCardIndex = curCard + 1
            updateCardValAndSuit(idx: nextCardIndex)
            currentCardNumHand.text = String(nextCardIndex + 1)
            curCard += 1
            
            if currentCardNumHand.text == String(hand.count) {
                sender.isHidden = true
            }
        }
    }
    
    @IBAction func prevCard(_ sender: UIButton) {
        print("Prev Card: \(curCard)")
        NextCardButton.isHidden = false
        
        if curCard > 0 {
            sender.isHidden = false
            let prevCardIndex = curCard - 1
            updateCardValAndSuit(idx: prevCardIndex)
            currentCardNumHand.text = String(prevCardIndex + 1)
            curCard -= 1
            
            if currentCardNumHand.text == "1" {
                sender.isHidden = true
            }
        }
    }
    
    @IBAction func drawCard(_ sender: UIButton) {
        draw(sender)
        numCardsLeftHand.text = String(hand.count)
    }
}


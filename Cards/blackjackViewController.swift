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
    
    
    @IBAction func passButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func bustButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func hitButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        
    }
    
    //Global vars
    var deck = Deck()
    var playerHand = [Card]()
    var dealerHand = [Card]()
    var cardPlay = ViewController()
    
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
        
        dealerHandCardback0.isHidden = false
        dealerHandCardback1.isHidden = false
        dealerHandSuit0.isHidden = true
        dealerHandSuit1.isHidden = true
        dealerHandValue0.isHidden = true
        dealerHandValue0.isHidden = true
        
        hitPileValue0.isHidden = true
        hitPileSuit0.isHidden = true
        hitPileCard0.isHidden = true
        hitPileValue1.isHidden = true
        hitPileSuit1.isHidden = true
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
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

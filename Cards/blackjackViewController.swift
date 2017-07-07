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
    @IBOutlet weak var hitPileValue0: UILabel!
    @IBOutlet weak var hitPileSuit0: UIImageView!
    @IBOutlet weak var hitPileCard0: UIImageView!
    @IBOutlet weak var hitPileValue1: UILabel!
    @IBOutlet weak var hitPileSuit1: UIImageView!
    @IBOutlet weak var hitPileCardback1: UIImageView!
    @IBOutlet weak var hitPileCardback0: UIImageView!
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerHandSuit1.isHidden = false
        
        //hideHitPile()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func hideHitPile() {
        hitPileValue0.isHidden = false
        hitPileSuit0.isHidden = false
        hitPileCard0.isHidden = false
        hitPileValue1.isHidden = false
        hitPileSuit1.isHidden = false
        hitPileCardback1.isHidden = false
        hitPileCardback0.isHidden = false
        hitPileCard1.isHidden = false
        hitPileSuit2.isHidden = false
        hitPileCardback2.isHidden = false
        hitPileCard2.isHidden = false
        hitPileValue2.isHidden = false
        hitPileSuit3.isHidden = false
        hitPileValue3.isHidden = false
        hitPileCardback3.isHidden = false
        hitPileCard3.isHidden = false
        hitPileValue4.isHidden = false
        hitPileSuit4.isHidden = false
        hitPileCardback4.isHidden = false
        hitPileCard4.isHidden = false
        hitPileValue5.isHidden = false
        hitPileSuit5.isHidden = false
        hitPileCardback5.isHidden = false
        hitPileCard5.isHidden = false
        hitPileValue6.isHidden = false
        hitPileSuit6.isHidden = false
        hitPileCardback6.isHidden = false
        hitPileCard6.isHidden = false
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

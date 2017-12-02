//
//  ResultViewController.swift
//  Roshambo
//
//  Created by atao1 on 11/29/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    var opponentChoice: Int = 0
    var playerChoice: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        winnerResults()
        print ("\(playerChoice) \(opponentChoice)")
    }
    
    //Determines winner changes 
    //1 is Rock
    //2 is Scissors
    //3 is Paper
    func winnerResults(){
        switch (playerChoice, opponentChoice) {
        case (1,2):
            resultLabel.text = "You Lose";
        case(1,3):
            resultLabel.text = "You Win!";
        case(2,1):
            resultLabel.text = "You Win!";
        case(2,3):
            resultLabel.text = "You Lose!";
        case(3,1):
            resultLabel.text = "You Lose!";
        case(3,2):
            resultLabel.text = "You Win!";
            
        default:
            resultLabel.text = "A Tie"
        }
    }

}

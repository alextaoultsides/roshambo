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
    //2 is Paper
    //3 is Scissors
    func winnerResults(){
        switch (playerChoice, opponentChoice) {
        case (1,2):
            resultLabel.text = "Paper covers Rock, You Lose!";
            resultImage.image = UIImage(named: "PaperCoversRock.jpg")
        case(1,3):
            resultLabel.text = "Rock breaks Scissors, You Win!";
            resultImage.image = UIImage(named: "RockCrushesScissors.jpg")
        case(2,1):
            resultLabel.text = "Paper covers Rock, You Win!";
            resultImage.image = UIImage(named: "PaperCoversRock.jpg")
        case(2,3):
            resultLabel.text = "Scissors cut Paper, You Lose!";
            resultImage.image = UIImage(named: "ScissorsCutPaper.jpg")
        case(3,1):
            resultLabel.text = "Rock breaks Scissors, You Lose!";
            resultImage.image = UIImage(named: "RockCrushesScissors.jpg")
        case(3,2):
            resultLabel.text = "Scissors cut Paper, You Win!";
            resultImage.image = UIImage(named: "ScissorsCutPaper.jpg")
            
        default:
            resultLabel.text = "A Tie"
            resultImage.image = UIImage(named: "itsATie.png")
        }
    }
    @IBAction func playAgain(){
        self.dismiss(animated: true, completion: nil)
    }
}

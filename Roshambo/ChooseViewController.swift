//
//  ViewController.swift
//  Roshambo
//
//  Created by atao1 on 11/29/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func opponentChoiceRandom() -> Int{
        let randomChoice = 1 + arc4random() % 3
        return Int(randomChoice)
    }
    @IBAction func playerRock(_ sender: Any) {
        
        
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.playerChoice = 1
        controller.opponentChoice = opponentChoiceRandom()
        // Set the two values to random numbers from 1 to 6
        
        
        // Present the view Controller
        present(controller, animated: true, completion: nil)    }
    


}


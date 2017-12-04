//
//  ViewController.swift
//  Roshambo
//
//  Created by atao1 on 11/29/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rockButton.setImage(UIImage(named: "rock"), for: UIControlState.normal)
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
        present(controller, animated: true, completion: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "result" {
            let controller = segue.destination as! ResultViewController
            controller.playerChoice = 2
            controller.opponentChoice = opponentChoiceRandom()
            
        }
        if segue.identifier == "scissorPick"{
            let controller = segue.destination as! ResultViewController
            controller.playerChoice = 3
            controller.opponentChoice = opponentChoiceRandom()
        }
    }
    @IBAction func playerPaper(_ sender: Any) {
        
        performSegue(withIdentifier: "paperPick", sender: self)
        
    }
    


}


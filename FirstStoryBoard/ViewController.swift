//
//  ViewController.swift
//  FirstStoryBoard
//
//  Created by Daniel Kimani on 15/04/2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceIv2: UIImageView!
    
    var firstDiceRoll=1
    var secondDiceRoll=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = UIImage(named: "dice1")
        diceIv2.image = UIImage(named: "dice1")

    }

    @IBAction func rollDiceBtn(_ sender: UIButton) {
        
        let diceImageArray=[UIImage(named: "dice1"),
                            UIImage(named: "dice2"),
                            UIImage(named: "dice3"),
                            UIImage(named: "dice4"),
                            UIImage(named: "dice5"),
                            UIImage(named: "dice6")
  ]
        diceImageViewOne.image = diceImageArray.randomElement() as! UIImage
               
        diceIv2.image = diceImageArray[Int.random(in: 0...5)]
    
    }
    
    
    
}


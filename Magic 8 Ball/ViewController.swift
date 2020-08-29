//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by JPS on 12/05/20.
//  Copyright © 2020 Ankit Mandusia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var uiimage: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

          newBallImage()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    @IBAction func uibutton(_ sender: UIButton) {
       
    newBallImage()
        
    }
    func newBallImage() {
        
         randomBallNumber = Int( arc4random_uniform(5))
        uiimage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}


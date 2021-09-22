//
//  ViewController.swift
//  PlayingWithSpringAnimationsApp
//
//  Created by Dmitry Logachev on 22.09.2021.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet weak var springAnimationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeIn"
        springAnimationView.animate()
        
        sender.animation = "wobble"
        sender.animate()
    }
    
}


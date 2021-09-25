//
//  ViewController.swift
//  PlayingWithSpringAnimationsApp
//
//  Created by Dmitry Logachev on 22.09.2021.
//

import Spring

class ViewController: UIViewController {
    
   // MARK: - IB Ootlets
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var animationNameLabel: UILabel!
   
    
    @IBOutlet weak var animationRunButton: SpringButton!
    
    // MARK: Private properties
    private var animation = Animation.getAnimation()
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationNameLabel.text = "Here will appear animation info"
    }
    
    //MARK: - IB Actions
    @IBAction func runSpringAnimation(_: SpringButton) {
        animationNameLabel.text = "\(animation.desciption)"
        
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curve
        springAnimationView.animate()
        
        
        animation = Animation.getAnimation()
        animationRunButton.setTitle("Run \(animation.animation)", for: .normal )
    }
}


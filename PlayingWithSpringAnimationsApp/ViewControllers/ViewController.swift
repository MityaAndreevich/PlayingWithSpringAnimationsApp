//
//  ViewController.swift
//  PlayingWithSpringAnimationsApp
//
//  Created by Dmitry Logachev on 22.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    private var allAnimations = Animation.getAnimation()
    
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var animationNameLabel: UILabel!
    @IBOutlet weak var animationCurveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationNameLabel.text = "Here will appear animation name"
        animationCurveLabel.text = "Here will appear curve name"
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        setAnimation()
        setLabelsDescription()
        
        //springAnimationView.animation = allAnimations.animation
        //springAnimationView.curve = allAnimations.curve
       // springAnimationView.animate()
        
    }
    
    private func setAnimation() {
        springAnimationView.animation = allAnimations.animation
        springAnimationView.curve = allAnimations.curve
        springAnimationView.animate()
    }
    
    private func setLabelsDescription() {
        animationNameLabel.text = allAnimations.animation
        animationCurveLabel.text = allAnimations.curve
    }
}


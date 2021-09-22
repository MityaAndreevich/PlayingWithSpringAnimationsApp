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
    @IBOutlet weak var animationCurveLabel: UILabel!
    
    @IBOutlet weak var animationRunButton: SpringButton!
    
    // MARK: Private properties
    private var nextAnimation = Animation.getNextAnimation()
    
    // MARK: Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationNameLabel.text = "Here will appear animation name"
        animationCurveLabel.text = "Here will appear curve name"
    }
    
    //MARK: - IB Actions
    @IBAction func runSpringAnimation(_: SpringButton) {
        
        getCurrentAnimation()
        getNextAnimation()
    }
    
    // MARK: Private Methods
    private func getNextAnimation() {
        nextAnimation = Animation.getNextAnimation()
        animationRunButton.setTitle("Next: \(nextAnimation)", for: .normal)
    }
    
    private func getCurrentAnimation() {
        let allAnimations = Animation.getAnimation(with: nextAnimation)
        
        springAnimationView.animation = allAnimations.animation
        springAnimationView.curve = allAnimations.curve
        springAnimationView.animate()
        
        animationNameLabel.text = "Animation: \(allAnimations.animation)"
        animationCurveLabel.text = "Curve: \(allAnimations.curve)"
    }
}


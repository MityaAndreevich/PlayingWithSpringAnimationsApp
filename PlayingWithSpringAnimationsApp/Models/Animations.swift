//
//  Animations.swift
//  PlayingWithSpringAnimationsApp
//
//  Created by Dmitry Logachev on 22.09.2021.
//

import Foundation

struct Animations {
    let animation: String
    let curve: String
}

extension Animations {
    static func getAnimationName() -> [Animations] {
        var allAnimations: [Animations] = []
        
        let animationNames = DataManager.shared.animationNames.shuffled()
        let curveNames = DataManager.shared.curveNames.shuffled()
        
        let iterationCount = min(animationNames.count, curveNames.count)
        
        for index in 0..<iterationCount {
            let animation = Animations(
                animation: animationNames[index],
                curve: curveNames[index]
            )
            allAnimations.append(animation)
        }
        return allAnimations
    }
}

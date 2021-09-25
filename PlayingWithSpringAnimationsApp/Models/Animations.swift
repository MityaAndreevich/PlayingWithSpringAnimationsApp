//
//  Animations.swift
//  PlayingWithSpringAnimationsApp
//
//  Created by Dmitry Logachev on 22.09.2021.
//

import Foundation

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var desciption: String {
        """
        preset: \(animation)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%0.02f", delay))
        """
    }
}

extension Animation {
    
    static func getAnimation() -> Animation {
        Animation(
            animation: DataManager.shared.animationNames.randomElement() ?? "",
            curve: DataManager.shared.curveNames.randomElement() ?? "",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}

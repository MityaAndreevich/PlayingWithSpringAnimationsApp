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
}

extension Animation {
    
    static func getAnimation(with animation: String) -> Animation {
        Animation(
            animation: animation,
            curve: DataManager.shared.curveNames.randomElement() ?? ""
        )
    }
    
    static func getNextAnimation() -> String {
        DataManager.shared.animationNames.randomElement() ?? ""
    }
}

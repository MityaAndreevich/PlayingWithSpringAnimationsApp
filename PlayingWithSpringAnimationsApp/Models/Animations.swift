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
    
    static func getAnimation() -> Animation {
        Animation(
            animation: DataManager.shared.animationNames.randomElement() ?? "",
            curve: DataManager.shared.curveNames.randomElement() ?? ""
        )
    }
}

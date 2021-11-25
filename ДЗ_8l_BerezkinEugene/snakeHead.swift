//
//  snakeHead.swift
//  ДЗ_8l_BerezkinEugene
//
//  Created by Eugene Berezkin on 25.11.2021.
//

import UIKit
import SpriteKit


class SnakeHead: SnakeBodyPart {
    override init(atPoint point: CGPoint) {
        super.init(atPoint: point)
        
        self.physicsBody?.categoryBitMask = CollisionCategories.SNakeHEad
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Snake | CollisionCategories.APple
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
}
}

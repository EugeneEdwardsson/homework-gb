//
//  Apple.swift
//  ДЗ_8l_BerezkinEugene
//
//  Created by Eugene Berezkin on 25.11.2021.
//

import UIKit
import SpriteKit



class Apple: SKShapeNode {
    
    init(position: CGPoint) {
        super.init()
        
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        
        fillColor = UIColor.red
        strokeColor = .red
        lineWidth = 5
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center: CGPoint(x: 5, y: 5))
        self.physicsBody?.categoryBitMask = CollisionCategories.APple
        
        self.position = position
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}


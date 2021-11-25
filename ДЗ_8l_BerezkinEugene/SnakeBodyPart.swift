//
//  SnakeBodyPart.swift
//  ДЗ_8l_BerezkinEugene
//
//  Created by Eugene Berezkin on 25.11.2021.
//

import UIKit
import SpriteKit




class SnakeBodyPart: SKShapeNode {
    
    let diametr: CGFloat = 10
    init(atPoint point: CGPoint) {
        super.init()
           
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: diametr, height: diametr)).cgPath
        fillColor = .green
        strokeColor = . green
        lineWidth = 10
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: (diametr - CGFloat(4)), center: CGPoint(x: 5, y: 5))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.APple
        
        self.position = point
        
       }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
        
    }
    
}


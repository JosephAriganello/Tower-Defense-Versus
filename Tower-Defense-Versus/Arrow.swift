//
//  Arrow.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 4/25/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

class Arrow: SKSpriteNode, Projectile{
    
    var projectileSpeed: Float
    var xPos: Float
    var yPos: Float
    
    required init(projectileSpeed_: Float, xPos_: Float, yPos_: Float) {
        projectileSpeed = projectileSpeed_
        xPos = xPos_
        yPos = yPos_
        
        let texture = SKTexture.init(imageNamed: "Arrow.png")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetProjectileSpeed(projectileSpeed_: Float) {
        projectileSpeed = projectileSpeed_
    }
    
    func SetXPosition(xPos_: Float) {
        xPos = xPos_
    }
    
    func SetYPosition(yPos_: Float) {
        yPos = yPos_
    }
    
    func GetProjectileSpeed() -> Float {
        return projectileSpeed
    }
    
    func GetXPosition() -> Float {
        return xPos
    }
    
    func GetYPosition() -> Float {
        return yPos
    }
    
    
}

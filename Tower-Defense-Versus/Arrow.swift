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
    var xPos: Int
    var yPos: Int
    
    required init(projectileSpeed_: Float, xPos_: Int, yPos_: Int) {
        projectileSpeed = projectileSpeed_
        xPos = xPos_
        yPos = yPos_
        
        let texture = SKTexture.init(imageNamed: "Arrow")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetProjectileSpeed(projectileSpeed_: Float) {
        projectileSpeed = projectileSpeed_
    }
    
    func SetXPosition(xPos_: Int) {
        xPos = xPos_
    }
    
    func SetYPosition(yPos_: Int) {
        yPos = yPos_
    }
    
    func GetProjectileSpeed() -> Float {
        return projectileSpeed
    }
    
    func GetXPosition() -> Int {
        return xPos
    }
    
    func GetYPosition() -> Int {
        return yPos
    }
    
    
}

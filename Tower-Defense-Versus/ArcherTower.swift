//
//  ArcherTower.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 4/11/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class ArcherTower: SKSpriteNode, Tower{
   
    var range: Int
    var damage: Int
    var aoeDamage: Int
    var xPos: Float
    var yPos: Float
    var rotation: Float
    var scale: Float
    var inRange: Bool
    
    required init(range_: Int, damage_: Int, aoeDamage_: Int, xPos_: Float, yPos_: Float, rotation_: Float, scale_: Float) {
        range = range_;
        damage = damage_;
        aoeDamage = aoeDamage_
        xPos = xPos_
        yPos = yPos_
        rotation = rotation_
        scale = scale_
        inRange = false
        
        let texture = SKTexture.init(imageNamed: "ArrowTower.png")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func Shoot() {
        
    }
    
    func SetRange(range_: Int) {
        range = range_
    }
    
    func SetDamage(damage_: Int) {
        damage = damage_
    }
    
    func SetAoeDamage(aoeDamage_: Int) {
        aoeDamage = aoeDamage_
    }
    
    func SetXPosition(xPos_: Float) {
        xPos = xPos_
    }
    
    func SetYPosition(yPos_: Float) {
        yPos = yPos_
    }
    
    func SetRotation(rotation_: Float) {
        rotation = rotation_
    }
    
    func SetScale(scale_: Float) {
        scale = scale_
    }
    
    func GetRange() -> Int {
        return range
    }
    
    func GetDamage() -> Int {
        return damage
    }
    
    func GetAoeDamage() -> Int {
        return aoeDamage
    }
    
    func GetXPosition() -> Float {
        return xPos
    }
    
    func GetYPosition() -> Float {
        return yPos
    }
    
    func GetRotation() -> Float {
        return rotation
    }
    
    func GetScale() -> Float {
        return scale
    }
    
}

//
//  Soldier.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 4/11/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

class Soldier : SKSpriteNode, SKPhysicsContactDelegate{
    
    var health: Int
    var movementSpeed: Float
    var damage: Int
    
    init(health_: Int, damage_: Int, movementSpeed_: Float){
        health = health_
        damage = damage_
        movementSpeed = movementSpeed_
        
        let texture = SKTexture.init(imageNamed: "Cannon")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetHealth(health_: Int){
        health = health_
    }
    
    func SetDamage(damage_: Int){
        damage = damage_
    }
    
    func GetHealth() ->Int{
        return health
    }
    
    func GetDamage() ->Int{
        return damage
    }
}

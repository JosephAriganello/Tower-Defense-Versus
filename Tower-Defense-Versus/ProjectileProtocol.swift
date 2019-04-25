//
//  ProjectileProtocol.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 4/25/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import Foundation

protocol Projectile{
    
    var projectileSpeed: Float {get}
    var xPos: Int {get}
    var yPos: Int {get}
    
    init(projectileSpeed_: Float, xPos_: Float, yPos_: Float)
    
    func SetProjectileSpeed(projectileSpeed_: Float)
    func SetXPosition(xPos_: Int)
    func SetYPosition(yPos_: Int)
    
    func GetProjectileSpeed() ->Float
    func GetXPosition() ->Int
    func GetYPosition() ->Int
    
}

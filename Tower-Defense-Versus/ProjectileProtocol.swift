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
    var xPos: Float {get}
    var yPos: Float {get}
    
    init(projectileSpeed_: Float, xPos_: Float, yPos_: Float)
    
    func SetProjectileSpeed(projectileSpeed_: Float)
    func SetXPosition(xPos_: Float)
    func SetYPosition(yPos_: Float)
    
    func GetProjectileSpeed() ->Float
    func GetXPosition() ->Float
    func GetYPosition() ->Float
    
}

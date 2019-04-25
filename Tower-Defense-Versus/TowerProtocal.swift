//
//  TowerProtocal.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 4/11/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import Foundation

protocol Tower {
    
    //Mandatory Variables.
    var range: Int {get}
    var damage: Int {get}
    var aoeDamage: Int {get}
    var xPos: Float {get}
    var yPos: Float {get}
    var rotation: Float {get}
    var scale: Float {get}
    var inRange: Bool {get}
    
    //Initialize function to set all of my mandatory variables.
    init(range_: Int, damage_: Int, aoeDamage_: Int, xPos_: Float, yPos_: Float, rotation_: Float, scale_: Float)
    
    //Shoots.
    func Shoot()
    
    //Setters.
    func SetRange(range_: Int)
    func SetDamage(damage_: Int)
    func SetAoeDamage(aoeDamage_: Int)
    func SetXPosition(xPos_: Float)
    func SetYPosition(yPos_: Float)
    func SetRotation(rotation_: Float)
    func SetScale(scale_: Float)
    
    //Getters.
    func GetRange() ->Int
    func GetDamage() ->Int
    func GetAoeDamage() ->Int
    func GetXPosition() ->Float
    func GetYPosition() ->Float
    func GetRotation() ->Float
    func GetScale() ->Float
}

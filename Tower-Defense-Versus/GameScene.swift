//
//  GameScene.swift
//  Tower Defense Versus
//
//  Created by Joseph Ariganello on 1/31/19.
//  Copyright © 2019 Joseph Ariganello. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var landBackground: SKTileMapNode!
    var towers: SKTileMapNode!
    var numberOfTowers: Int = 0
    
    let soldier = Soldier(health_: 100, damage_: 1, movementSpeed_: 25)
    
    let cannon = Cannon(range_: 600, damage_: 100, aoeDamage_: 5, xPos_: 200, yPos_: -500, rotation_: 0, scale_: 1)
    
    override func didMove(to view: SKView) {
        
        soldier.scale(to: CGSize(width: 150, height: 150))
        cannon.scale(to: CGSize(width: 150, height: 150))
        
        let moveSoldier1 = SKAction.moveBy(x: 0, y: -550, duration: 5)
        let moveSoldier2 = SKAction.moveBy(x: 400, y: 0, duration: 4)
        let moveSoldier3 = SKAction.moveBy(x: 0, y: -400, duration: 4)
        let sequence = SKAction.sequence([moveSoldier1, moveSoldier2, moveSoldier3])
        
        LoadSceneNodes()
        
        soldier.position = CGPoint(x: -850, y: 475)
        soldier.zRotation = 180
        cannon.position = CGPoint(x: -300, y: -500)
        addChild(soldier)
        addChild(cannon)
        
        soldier.run(sequence)
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }
    
    func LoadSceneNodes(){
        guard let landBackground = childNode(withName: "landBackground") as? SKTileMapNode else{
            fatalError("background was not loaded")
        }
        self.landBackground = landBackground
        
        /*let graph = GKGridGraph(fromGridStartingAt: vector_int2(0,0), width: Int32(landBackground.numberOfColumns), height: Int32(landBackground.numberOfRows), diagonalsAllowed: false)
        
        var notWalkable = [GKGridGraphNode]()
        
        for column in 0..<landBackground.numberOfColumns{
        
            for row in 0..<landBackground.numberOfRows{
            
                let position = landBackground.centerOfTile(atColumn: column, row: row)
                
                guard let definition = landBackground.tileDefinition(atColumn: column, row: row) else { continue }
                guard let userData = definition.userData else { continue }
                guard let isWalkable = userData["isWalkable"] else { continue }
                
                if isWalkable as! Bool{
                    let grassNode = graph.node(atGridPosition: vector_int2(Int32(column), Int32(row)))!
                    notWalkable.append(grassNode)
                }
            }
        }
        
        graph.remove(notWalkable)*/
    }
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        let distanceY = cannon.position.y - soldier.position.y
        
        if distanceY < 500.0{
            
        }
        
    }
}

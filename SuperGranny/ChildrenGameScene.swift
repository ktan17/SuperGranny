//
//  GameScene.swift
//  Super Granny
//
//  Created by Kevin Tan on 10/29/16.
//  Copyright © 2016 TK Games. All rights reserved.
//
import SpriteKit
import GameplayKit

class ChildrenGameScene: SKScene {
    
    private var Granny : SKSpriteNode?
    private var Rock : SKShapeNode?
    
    private var buttonLabel : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // init playButton
        
        self.Granny = SKSpriteNode (imageNamed: "denture")
        if let Granny = self.Granny?.copy() as! SKSpriteNode? {
            
            Granny.position = CGPoint(x: self.frame.width / 2, y: 600)
            addChild(Granny)
            
        }
        
        // init Label
        
        self.buttonLabel = SKLabelNode(fontNamed: "Courier")
        if let buttonLabel = self.buttonLabel?.copy() as! SKLabelNode? {
            
            buttonLabel.position = CGPoint(x: self.frame.width / 2, y: 290)
            buttonLabel.text = "PLAY"
            
            addChild(buttonLabel);
            
        }
        
        self.Rock = SKShapeNode.init(rectOf: CGSize.init(width: 10, height: 10))
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        
        if let n = self.Rock?.copy() as! SKShapeNode? {
            n.position = CGPoint(x: self.frame.width / 2, y: 700)
            n.strokeColor = SKColor.green
            self.addChild(n)
            
            n.run(SKAction.move(to: CGPoint(x: self.frame.width / 2, y: 0), duration: 4))
            
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

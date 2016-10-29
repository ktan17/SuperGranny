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
    private var buttonLabel : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // init playButton
        
        self.Granny = SKSpriteNode (imageNamed: "Granny")
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
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

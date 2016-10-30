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
    
    private var BG : SKSpriteNode?
    private var Granny : SKSpriteNode?
    private var Rock : SKShapeNode?
    
    private var buttonLabel : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // init BG
        
        self.BG = SKSpriteNode (imageNamed: "rockThrowBG")
        if let BG = self.BG?.copy() as! SKSpriteNode? {
            
            BG.size = CGSize(width: self.frame.width, height: self.frame.height)
            BG.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
            addChild(BG)
            
        }
        
        // init Granny
        
        self.Granny = SKSpriteNode (imageNamed: "grannySprite")
        if let Granny = self.Granny?.copy() as! SKSpriteNode? {
            
            Granny.size = CGSize(width: Granny.size.width / 2, height: Granny.size.height / 2)
            Granny.position = CGPoint(x: self.frame.width / 2, y: 550)
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
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let n = self.Rock?.copy() as! SKShapeNode? {
            n.position = CGPoint(x: self.frame.width / 2, y: 550)
            n.strokeColor = SKColor.green
            n.zPosition = 100
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

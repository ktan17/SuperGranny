//
//  GameScene.swift
//  Super Granny
//
//  Created by Kevin Tan on 10/29/16.
//  Copyright © 2016 TK Games. All rights reserved.
//
import SpriteKit
import GameplayKit

class TitleScene: SKScene {
    
    private var playButton : SKSpriteNode?
    private var label : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // init playButton
        
        self.playButton = SKSpriteNode (imageNamed: "Button BG")
        if let playButton = self.playButton?.copy() as! SKSpriteNode? {
            
            playButton.size = CGSize.init(width: playButton.size.width * 1.25, height: playButton.size.height * 1.25)
            playButton.position = CGPoint(x: self.frame.width / 2, y: 300)
            addChild(playButton)
            
        }
        
        // init Label
        
        
        
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
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
    private var Cookie : SKSpriteNode?
    private var Child1 : SKSpriteNode?
    private var Child2 : SKSpriteNode?
    private var Child3 : SKSpriteNode?
    
    private var redBar : SKSpriteNode?
    private var greenBar : SKSpriteNode?
    
    var counter = 0
    
    override func didMove(to view: SKView) {
        
        // init BG
        
        self.BG = SKSpriteNode (imageNamed: "rockThrowBG")
        if let BG = self.BG?.copy() as! SKSpriteNode? {
            
            BG.size = CGSize(width: self.frame.width, height: self.frame.height)
            BG.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
            BG.zPosition = 0
            addChild(BG)
            
        }
        
        // init Granny
        
        self.Granny = SKSpriteNode (imageNamed: "grannySprite")
        if let Granny = self.Granny?.copy() as! SKSpriteNode? {
            
            Granny.size = CGSize(width: Granny.size.width / 2, height: Granny.size.height / 2)
            Granny.position = CGPoint(x: self.frame.width / 2, y: 550)
            Granny.zPosition = 10
            addChild(Granny)
            
        }
        
        self.Cookie = SKSpriteNode(imageNamed: "cookieSmall")
        if let Cookie = self.Cookie {
            
            Cookie.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 1)))
            
        }
        
        // init Child1
        
        self.Child1 = SKSpriteNode (imageNamed: "kid1")
        if let Child1 = self.Child1?.copy() as! SKSpriteNode? {
            
            Child1.size = CGSize(width: Child1.size.width * 2.5, height: Child1.size.height * 2.5)
            Child1.position = CGPoint(x: self.frame.width / 2 + 35, y: 50)
            Child1.zPosition = 100
            addChild(Child1)
            
        }
        
        // init Child2
        
        self.Child2 = SKSpriteNode (imageNamed: "kid2")
        if let Child2 = self.Child2?.copy() as! SKSpriteNode? {
            
            Child2.size = CGSize(width: Child2.size.width * 2.5, height: Child2.size.height * 2.5)
            Child2.position = CGPoint(x: self.frame.width / 2, y: 40)
            Child2.zPosition = 105
            addChild(Child2)
            
        }
        
        // init Child3
        
        self.Child3 = SKSpriteNode (imageNamed: "kid3")
        if let Child3 = self.Child3?.copy() as! SKSpriteNode? {
            
            Child3.size = CGSize(width: Child3.size.width * 2.5, height: Child3.size.height * 2.5)
            Child3.position = CGPoint(x: self.frame.width / 2 - 35, y: 50)
            Child3.zPosition = 100
            addChild(Child3)
            
        }
        
        // init HealthBar
        
        self.redBar = SKSpriteNode (imageNamed: "redHealth")
        if let redBar = self.redBar?.copy() as! SKSpriteNode? {
            
            redBar.size = CGSize(width: redBar.size.width * 2, height: redBar.size.height * 2)
            redBar.position = CGPoint(x: self.size.width / 2, y: 140)
            
            redBar.zPosition = 100
            
            addChild(redBar)
            
        }
        
        // init GreenHeatlh
        
        self.greenBar = SKSpriteNode (imageNamed: "greenHealth")
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let check = SKAction.run {
            
            if self.counter >= 50 {
                
                let scene = GameOverScene(size: (self.view?.frame.size)!, won: true)
                let transition = SKTransition.reveal(with: SKTransitionDirection.down, duration: 1.0)
                
                scene.scaleMode = .aspectFill
                
                self.view?.presentScene(scene, transition: transition)
                
            }
            
        }
        
        if let n = self.Cookie?.copy() as! SKSpriteNode? {
            
            let score = SKAction.run {
                
                self.counter += 1
                
                if let greenBar = self.greenBar?.copy() as! SKSpriteNode? {
                    
                    let w: Double = 120.0 * Double(self.counter) / 50
                    
                    greenBar.size = CGSize(width: w, height: 20)
                    
                    greenBar.position = CGPoint(x: (self.size.width / 2) - 60 + 0.5 * greenBar.size.width, y: 140)
                    greenBar.zPosition = 1000;
                    
                    self.addChild(greenBar)
                    
                }
                
            }
            
            n.size = CGSize(width: 15, height: 15)
            n.position = CGPoint(x: self.frame.width / 2, y: 550)
            n.zPosition = 50
            self.addChild(n)
            
            n.run(SKAction.sequence([SKAction.move(to: CGPoint(x: self.frame.width / 2, y: 40), duration: 2), check, score, SKAction.removeFromParent()]))
            
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

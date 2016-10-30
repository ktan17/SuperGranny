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
    private var Child : SKSpriteNode?
    
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
        
        // init Child
        
        self.Child = SKSpriteNode (imageNamed: "kid1")
        if let Child = self.Child {
            
            Child.position = CGPoint(x: self.frame.width / 2, y: -10)
            Child.zPosition = 20
            
            let wait = SKAction.wait(forDuration: 2.5)
            let run = SKAction.run {
                
                let randomNum = (arc4random_uniform(3) + 1)
                
                if (randomNum == 1) {
                    
                    let ChildAnimatedAtlas = SKTextureAtlas(named: "kid1Frames")
                    var childFrames = [SKTexture]()
                    
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid1"))
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid1f"))

                    self.addChild(Child)
                    
                    Child.run(SKAction.repeatForever(SKAction.animate(with: childFrames, timePerFrame: 1, resize: false, restore: true)))
                    
                }
                
                else if (randomNum == 2) {
                    
                    let ChildAnimatedAtlas = SKTextureAtlas(named: "kid2Frames")
                    var childFrames = [SKTexture]()
                    
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid2"))
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid2f"))
                    
                    self.addChild(Child)
                    
                    Child.run(SKAction.repeatForever(SKAction.animate(with: childFrames, timePerFrame: 1, resize: false, restore: true)))
                    
                }
                
                else {
                    
                    let ChildAnimatedAtlas = SKTextureAtlas(named: "kid3Frames")
                    var childFrames = [SKTexture]()
                    
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid3"))
                    childFrames.append(ChildAnimatedAtlas.textureNamed("kid3f"))
                    
                    self.addChild(Child)
                    
                    Child.run(SKAction.repeatForever(SKAction.animate(with: childFrames, timePerFrame: 1, resize: false, restore: true)))
                    
                }
                
                Child.run(SKAction.move(to: CGPoint(x: self.frame.width / 2, y: 550), duration: 6))
                
            }
            
            Child.run(SKAction.repeatForever(SKAction.sequence([wait, run])))
            
        }
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let n = self.Cookie?.copy() as! SKSpriteNode? {
            n.size = CGSize(width: 15, height: 15)
            n.position = CGPoint(x: self.frame.width / 2, y: 550)
            n.zPosition = 100
            self.addChild(n)
            
            n.run(SKAction.sequence([SKAction.move(to: CGPoint(x: self.frame.width / 2, y: 0), duration: 4), SKAction.removeFromParent()]))
            
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

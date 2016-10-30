//

//  GameOverScene.swift

//  Super Granny

//

//  Created by Akshara Sundararajan on 10/29/16.

//  Copyright © 2016 TK Games. All rights reserved.

//



import Foundation

import SpriteKit



class GameOverScene: SKScene {
    
    private var BG : SKSpriteNode?
    
    private var Granny : SKSpriteNode?
    
    
    
    init(size: CGSize, won:Bool) {
        
        
        
        super.init(size: size)
        
        if(won==true)
            
        {
            
            self.BG = SKSpriteNode (imageNamed: "winScreen")
            
        }
            
        else
            
        {
            
            self.BG = SKSpriteNode (imageNamed: "loseScreen")
            
        }
        
        if let BG = self.BG?.copy() as! SKSpriteNode? {
            
            
            
            BG.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
            
            BG.setScale(0.5)
            
            BG.zPosition=20;
            
            addChild(BG)
            
            
            
        }
        
        if(won)
            
        {
            
            self.Granny = SKSpriteNode (imageNamed: "grannySpriteHappy")
            
        }
            
        else
            
        {
            
            self.Granny=SKSpriteNode(imageNamed: "grannySpriteSad")
            
        }
        
        if let Granny = self.Granny?.copy() as! SKSpriteNode? {
            
            
            
            Granny.position = CGPoint(x: self.frame.width/2, y: (size.height/2)-90)
            
            Granny.zPosition=45;
            
            addChild(Granny)
            
        }
        
        
        
        // 1
        
        backgroundColor = SKColor.white
        
        
        
        // 2
        
        let message = won ? "You won! :D" : "You lose :("
        
        let entry="Hehe, child."
        
        
        
        // 3
        
        let label2=SKLabelNode(fontNamed: "Snell Roundhand")
        
        label2.text=entry
        
        label2.fontSize=20
        
        label2.fontColor=SKColor.black
        
        label2.position=CGPoint(x:size.width/2, y:420)
        
        label2.zPosition=50;
        
        addChild(label2)
        
        let label = SKLabelNode(fontNamed: "Marker Felt")
        
        label.text = message
        
        label.zPosition=50;
        
        label.fontSize = 25
        
        label.fontColor = SKColor.black
        
        label.position = CGPoint(x: size.width/2, y: 390)
        
        addChild(label)
        
        
        
        // 4
        
        run(SKAction.sequence([
            
            SKAction.wait(forDuration: 5.0),
            
            SKAction.run() {
                
                // 5
                
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                
                let scene = GameScene(size: size)
                
                self.view?.presentScene(scene, transition:reveal)
                
            }
            
            ]))
        
        
        
    }
    
    
    
    // 6
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}

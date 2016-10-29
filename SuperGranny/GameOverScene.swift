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
    
    init(size: CGSize, won:Bool) {
        
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.white
        
        // 2
        let message = won ? "You won! :D" : "You lose :("
        let entry="Hehe, child"
        
        // 3
        let label2=SKLabelNode(fontNamed: "IHATCS__")
        label2.text=entry
        label2.fontSize=20
        label2.fontColor=SKColor.black
        label2.position=CGPoint(x:5, y:750)
        addChild(label2)
        let label = SKLabelNode(fontNamed: "IHATCS__")
        label.text = message
        label.fontSize = 25
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        // 4
        run(SKAction.sequence([
            SKAction.wait(forDuration: 3.0),
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

//
//  DenturesGameScene.swift
//  SuperGranny
//
//  Created by Akshara Sundararajan on 10/29/16.
//  Copyright © 2016 TK Games. All rights reserved.
//

import Foundation
import SpriteKit

class DenturesGameScene: SKScene {
    private var BGD : SKSpriteNode?
    override func didMove(to view: SKView) {
        
        // init playButton
        
        self.BGD = SKSpriteNode (imageNamed: "denturegamebg")
        if let BGD = self.BGD?.copy() as! SKSpriteNode? {
            
            BGD.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
            addChild(BGD)
            
        }

        let denture = SKSpriteNode(imageNamed: "denture")
         denture.name = "Dentures"
        denture.position = CGPoint(x: 365, y: 130);
         denture.isUserInteractionEnabled = false
         func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
         let touch:UITouch = touches.anyObject()! as! UITouch
         let positionInScene = touch.location(in: self)
         let touchedNode = self.atPoint(positionInScene)
         
         if let name = touchedNode.name
         {
         if name == "Dentures"
         {
         print("You win!")
         }
         }
         
         }
         
 
}
}

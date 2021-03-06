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
    
    private var instructLabel : SKLabelNode?
    
    private var BGD : SKSpriteNode?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self)           // 1
            
            if let button = atPoint(location) as? SKSpriteNode {        // 2
                
                
                
                if button.name == "denture" {
                    
                    
                    
                    let scene = ChildrenGameScene(size: (self.view?.frame.size)!)
                    
                    let transition = SKTransition.reveal(with: SKTransitionDirection.down, duration: 1.0)
                    
                    
                    
                    scene.scaleMode = .aspectFill
                    
                    
                    
                    self.view?.presentScene(scene, transition: transition)
                    
                    
                    
                }
                
            }
            
        }
        
    }
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        self.instructLabel = SKLabelNode(fontNamed: "Marker Felt")
        if let instructLabel = self.instructLabel?.copy() as! SKLabelNode? {
            
            instructLabel.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
            instructLabel.zPosition = 10000
            instructLabel.fontColor = UIColor.black
            instructLabel.text = "Find the dentures!"
            
            addChild(instructLabel)
            
            instructLabel.run(SKAction.sequence([SKAction.wait(forDuration: 1), SKAction.fadeOut(withDuration: 0.5)]))
            
        }
        
        
        
        // init playButton
        
        
        
        self.BGD = SKSpriteNode (imageNamed: "denturegamebg")
        
        if let BGD = self.BGD?.copy() as! SKSpriteNode? {
            
            BGD.size=CGSize(width: self.frame.width, height: self.frame.height)
            
            BGD.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
            
            addChild(BGD)
            
            
            
        }
        
        
        
        let denture = SKSpriteNode(imageNamed: "denture")
        denture.size=CGSize(width: denture.size.width/2.3, height: denture.size.height/2.3)
        
        denture.name = "denture"
        denture.zPosition = 50
        
        let randomVar=Int(arc4random_uniform(5) + 1);
        //let randomVar=3
        print(randomVar)
        
        switch (randomVar) {
            
        case 1:
            
            denture.position = CGPoint(x: 230, y: 583);
            
            break;
            
        case 2:
            
            denture.position = CGPoint(x: 92, y: 516);
            
            break;
            
        case 3:
            
            denture.position = CGPoint(x: 13, y: 454);
            
            break;
            
        case 4:
            
            denture.position = CGPoint(x: 210, y: 380);
            
            break;
            
        case 5:
            
            denture.position = CGPoint(x: 74, y: 15);
            
            break;
            
        default:
            
            print("error");
            
        }
        
        //addChild(denture)
        
        
        
        
        
        denture.isUserInteractionEnabled = false
        
        
        
        addChild(denture)
        
        
        
        
        
        
        
        /*func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
         
         
         
         for touch in touches {
         
         
         
         let location = touch.location(in: self)
         
         let nodes = self.nodes(at: location)
         
         
         
         for node in nodes
         
         {
         
         if (node.name=="Dentures")
         
         {
         
         NSLog("Touch a SKNodeDerivedNode")
         
         break
         
         }
         
         }
         
         }
         
         }*/
        
        
        
        
        
        /*func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
         
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
         
         */
        
        
        
        
        
    }
    
    
    
}

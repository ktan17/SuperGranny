//

//  DenturesGameScene.swift

//  SuperGranny

//

//  Created by Akshara Sundararajan on 10/29/16.

//  Copyright © 2016 TK Games. All rights reserved.

//



import Foundation

import SpriteKit

class TouchableSpriteNode : SKSpriteNode
    
{
    
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        print("touched")
        
    }
    
}

class DenturesGameScene: SKScene {
    
    
    
    private var BGD : SKSpriteNode?
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    
    
    
    override func didMove(to view: SKView) {
        
        
        
        
        
        
        
        label.center = CGPoint(x: 160, y: 285)
        
        label.textAlignment = .center
        
        label.text = "Find the dentures!"
        
        self.label.font = UIFont(name: "HelveticaNeue", size: 20)
        
        //self.label.alpha = 0;
        
        self.label.alpha = 1
        
        UIView.animate(withDuration: 0.7, delay: 0.0, options: [.repeat, .autoreverse, .curveEaseInOut], animations:
            
            {
                
                self.label.alpha = 0
                
        }, completion: nil)
        
        
        
        self.view?.addSubview(label)
        
        
        
        // init playButton
        
        
        
        self.BGD = SKSpriteNode (imageNamed: "denturegamebg")
        
        if let BGD = self.BGD?.copy() as! SKSpriteNode? {
            
            BGD.size=CGSize(width: self.frame.width, height: self.frame.height)
            
            BGD.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
            
            addChild(BGD)
            
            
            
        }
        
        
        
        let denture = SKSpriteNode(imageNamed: "denture")
        
        denture.name = "Dentures"
        
        let randomVar=Int(arc4random_uniform(5) + 1);
        
        switch (randomVar) {
            
        case 1:
            
            denture.position = CGPoint(x: 365, y: 1081-130);
            
            break;
            
        case 2:
            
            denture.position = CGPoint(x: 142, y: 1081-247);
            
            break;
            
        case 3:
            
            denture.position = CGPoint(x: 10, y: 1081-344);
            
            break;
            
        case 4:
            
            denture.position = CGPoint(x: 343, y: 1081-465);
            
            break;
            
        case 5:
            
            denture.position = CGPoint(x: 121, y: 1081-1054);
            
            break;
            
        default:
            
            print("error");
            
        }
        
        //addChild(denture)
        
        
        
        
        
        denture.isUserInteractionEnabled = false
        
        
        
        addChild(denture)
        
        func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            
            
            
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
            
        }
        
        
        
        
        
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

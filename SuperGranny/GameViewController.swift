//
//  GameViewController.swift
//  Super Granny
//
//  Created by Kevin Tan on 10/29/16.
//  Copyright © 2016 TK Games. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameOverScene(size: self.view.frame.size, won: true)
        
        if let view = self.view as! SKView? {
            
            scene.scaleMode = .aspectFill
            scene.backgroundColor = UIColor.init(red: 0, green: 164, blue: 255, alpha: 1)
            
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
            
        }
        
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
        return .portrait
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    /*
     override func viewDidLoad() {
     super.viewDidLoad()
     
     let scene = GameOverScene(size: self.view.frame.size, won:true)
     
     if let view = self.view as! SKView? {
     
     scene.scaleMode = .aspectFill
     scene.backgroundColor = UIColor.init(red: 0, green: 164, blue: 255, alpha: 1)
     
     view.presentScene(scene)
     
     view.ignoresSiblingOrder = true
     
     view.showsFPS = true
     view.showsNodeCount = true
     
     
     }*/
}

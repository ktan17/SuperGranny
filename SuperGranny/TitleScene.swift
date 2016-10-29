//
//  GameScene.swift
//  Super Granny
//
//  Created by Kevin Tan on 10/29/16.
//  Copyright © 2016 TK Games. All rights reserved.
//
import SpriteKit
import GameplayKit

/*protocol ButtonDelegate:class {
    
    func printButtonsName(name:String?)
    
}

class Button : SKSpriteNode{
    
    weak var delegate:ButtonDelegate?
    
    init(name:String){
        super.init(texture: nil, color: .purple, size: CGSize(width: 50, height: 50))
        self.name = name
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        delegate?.printButtonsName(name: self.name)
        
    }
} */

class TitleScene: SKScene {
    
    private var playButton : SKSpriteNode?
    private var BG : SKSpriteNode?
    private var lblTitle : SKSpriteNode?
    private var Granny : SKSpriteNode?
    
    private var buttonLabel : SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        // init BG
        
        self.BG = SKSpriteNode (imageNamed: "TitleBG")
        if let BG = self.BG?.copy() as! SKSpriteNode? {
            
            BG.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
            addChild(BG)
            
        }
        
        // init Granny
        
        self.Granny = SKSpriteNode (imageNamed: "grannySprite")
        if let Granny = self.Granny?.copy() as! SKSpriteNode? {
            
            Granny.size = CGSize(width: Granny.size.width / 2, height: Granny.size.height / 2)
            Granny.position = CGPoint(x: 100, y: 120)
            addChild(Granny)
            
        }
        
        // init lblTitle
        
        self.lblTitle = SKSpriteNode (imageNamed: "TitleLabel")
        if let lblTitle = self.lblTitle?.copy() as! SKSpriteNode? {
            
            lblTitle.size = CGSize(width: lblTitle.size.width / 2, height: lblTitle.size.height / 2)
            lblTitle.position = CGPoint(x: self.size.width / 2, y: 520)
            addChild(lblTitle)
            
            let pulseUp = SKAction.scale(to: 1.1, duration: 1.0)
            let pulseDown = SKAction.scale(to: 0.9, duration: 1.0)
            let pulse = SKAction.sequence([pulseUp, pulseDown])
            
            lblTitle.run(SKAction.repeatForever(pulse))
            
        }
        
        // init playButton
        
        self.playButton = SKSpriteNode (imageNamed: "Button BG")
        if let playButton = self.playButton?.copy() as! SKSpriteNode? {
            
            playButton.name = "playButton"
            playButton.size = CGSize.init(width: playButton.size.width * 1.25, height: playButton.size.height * 1.25)
            playButton.position = CGPoint(x: self.frame.width / 2, y: 300)
            addChild(playButton)
            
        }
        
        // init Label
        
        self.buttonLabel = SKLabelNode(fontNamed: "Courier")
        if let buttonLabel = self.buttonLabel?.copy() as! SKLabelNode? {
            
            buttonLabel.position = CGPoint(x: self.frame.width / 2, y: 290)
            buttonLabel.text = "PLAY"
            
            addChild(buttonLabel);
            
        }
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)           // 1
            
            if let button = atPoint(location) as? SKSpriteNode {        // 2
                
                if button.name == "playButton" {
                    
                    let scene = DenturesGameScene(size: (self.view?.frame.size)!)
                    let transition = SKTransition.reveal(with: SKTransitionDirection.down, duration: 1.0)
                    
                    scene.scaleMode = .aspectFill
                    
                    self.view?.presentScene(scene, transition: transition)
                    
                }
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

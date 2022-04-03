//
//  GameScene.swift
//  FlappyDragon
//
//  Created by Rennan Bruno on 01/04/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        addBackground()
    }
    
    func addBackground() {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 )
        addChild(background)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        }
        
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

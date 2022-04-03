//
//  GameScene.swift
//  FlappyDragon
//
//  Created by Rennan Bruno on 01/04/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var floor: SKSpriteNode!
    var intro: SKSpriteNode!
    var gameArea: CGFloat = 410.0
    
    
    override func didMove(to view: SKView) {
        addBackground()
        addFloor()
        addIntro()
    }
    
    func addBackground() {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2 )
        background.zPosition = 0
        addChild(background)
    }
    
    func addFloor() {
        floor = SKSpriteNode(imageNamed: "floor")
        floor.position = CGPoint(x: floor.size.width/2, y: size.height - gameArea - floor.size.height/2)
        floor.zPosition = 2
        addChild(floor)
    }
    func addIntro() {
        intro = SKSpriteNode(imageNamed: "intro")
        intro.position = CGPoint(x: size.width/2, y: size.height - 210)
        intro.zPosition = 3
        addChild(intro)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        }
        
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

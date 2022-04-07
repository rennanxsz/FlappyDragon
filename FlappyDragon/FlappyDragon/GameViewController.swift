//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Rennan Bruno on 01/04/22.
//

import UIKit
import SpriteKit
import GameplayKit

var stage: SKView!

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        stage = view as! SKView
        stage.ignoresSiblingOrder = true
        
        presentScene()
        
    }
    
    func presentScene() {
        let scene = GameScene(size: CGSize(width: 320, height: 568))
        scene.gameViewController = self
        scene.scaleMode = .aspectFill
        stage.presentScene(scene, transition: .doorsOpenVertical(withDuration: 0.5))
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

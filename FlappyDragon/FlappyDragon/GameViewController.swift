//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Rennan Bruno on 01/04/22.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
    var stage: SKView!
    var musicPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        stage = (view as! SKView)
        stage.ignoresSiblingOrder = true
        
        presentScene()
        playMusic()
    }
    
    func playMusic() {
        if let musicURL = Bundle.main.url(forResource: "musica", withExtension: "m4a") {
            musicPlayer = try! AVAudioPlayer(contentsOf: musicURL)
            musicPlayer.numberOfLoops = -1
            musicPlayer.volume = 0.4
            musicPlayer.play()
        }
            
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

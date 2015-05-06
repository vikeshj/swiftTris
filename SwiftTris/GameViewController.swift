//
//  GameViewController.swift
//  SwiftTris
//
//  Created by Vikesh on 2/6/15.
//  Copyright (c) 2015 Vikesh. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
    
    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view
        let skview = view as! SKView
        skview.multipleTouchEnabled = false
        
        //create and configure the scene
        scene = GameScene(size: skview.bounds.size)
        scene.scaleMode = .AspectFill
        
        //present the scene
        skview.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

//
//  GameScene.swift
//  SwiftTris
//
//  Created by Vikesh on 2/6/15.
//  Copyright (c) 2015 Vikesh. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = NSTimeInterval(600)

class GameScene: SKScene {
    
    var tick:(() -> ())? //called a closure ref: on apple
    var tickLengthMillis = TickLengthLevelOne
    var lastTick:NSDate?
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        anchorPoint = CGPoint(x: 0, y: 1)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(background)
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        if(lastTick == nil){ return }
        
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            lastTick = NSDate()
            tick?()
        }
    }
    
    internal func startTicking(){
        lastTick = NSDate()
    }
    
    internal func stopTicking() {
        lastTick = nil
    }
}

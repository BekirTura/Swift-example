//
//  GameScene.swift
//  game_2
//
//  Created by bekir tura on 19/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var Spaceship:SKSpriteNode!
    var fingerLocation = CGPoint()
    override func didMoveToView(view: SKView) {
        Spaceship = SKSpriteNode(imageNamed: "Spaceship")
        Spaceship.anchorPoint = CGPointMake(0.5,0.5)
        self.addChild(Spaceship)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            fingerLocation = touch.locationInNode(self)
            
           
        }
    }
    override func touchesMoved(touches: NSSet!, withEvent event: UIEvent!) {
        for touch: AnyObject in touches {
            fingerLocation = touch.locationInNode(self)
            
            
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        var radians = atan2(fingerLocation.x, fingerLocation.y)
        Spaceship.zPosition = -radians
    }
}

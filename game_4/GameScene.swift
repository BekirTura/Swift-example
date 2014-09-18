//
//  GameScene.swift
//  game_4
//
//  Created by bekir tura on 19/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var ball:Ball!
    var xangle = 0.0
    var yangle = 0.0
    var centerY = 0.0
    var range = 100.0
    var xspeed = 0.1
    var yspeed = 0.5
    override func didMoveToView(view: SKView) {
        ball=Ball(size: self.size)
        self.addChild(ball.node)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        }
   
   
    override func update(currentTime: CFTimeInterval) {
        ball.node.position.y = CGFloat(centerY + sin(yangle) * range)
        ball.node.position.x = CGFloat(centerY + sin(xangle) * range)
        xangle+=xspeed
        yangle+=yangle
 }
}

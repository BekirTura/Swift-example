//
//  Ball.swift
//  game_4
//
//  Created by bekir tura on 19/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import Foundation
import SpriteKit


class Ball{
    var size:CGSize
    var node:SKShapeNode!
    init(size:CGSize){
        self.size = size
        let center = CGPointMake(size.width * 0.5, size.height * 0.5)
        let circle = CGRectMake(center.x-40.0, center.y-40.0, 80.0, 80.0)
        self.node = SKShapeNode()
        self.node.path = UIBezierPath(ovalInRect: circle).CGPath
        self.node.fillColor = SKColor.redColor()
        self.node.strokeColor = nil
 }
}
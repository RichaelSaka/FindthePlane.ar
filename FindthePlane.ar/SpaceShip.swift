//
//  SpaceShip.swift
//  FindthePlane.ar
//
//  Created by Apple on 7/26/20.
//  Copyright © 2020 RS. All rights reserved.
//


import ARKit

class SpaceShip: SCNNode {
    // loading ship.scn image
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else {return}
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        self.addChildNode(wrapperNode)
    }

}

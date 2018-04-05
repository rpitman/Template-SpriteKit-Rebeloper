//
//  GameViewController.swift
//  Template SpriteKit Rebeloper
//
//  Created by ronnie on 4/3/18.
//  Copyright © 2018 space.c-flat. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
  
  let skView: SKView = {
    let view = SKView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(skView)
    
    skView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    skView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    skView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    skView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    let scene = MainMenu(size: CGSize(width: ScreenSize.width, height: ScreenSize.heigth))
    scene.scaleMode = .aspectFill
    skView.presentScene(scene)
    skView.ignoresSiblingOrder = true
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

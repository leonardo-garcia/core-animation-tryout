//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Leonardo Garcia  on 11/11/19.
//  Copyright © 2019 Leonardo Garcia . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    private var layerTransformer: LayerTransformer?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.layer.masksToBounds = true
        imageView.isUserInteractionEnabled = true
        layerTransformer = LayerTransformer(for: imageView.layer)
    }
    
    @IBAction func rotationZDidChange(_ sender: UISlider) {
        let zAngle = CGFloat(sender.value)
        layerTransformer?.zRotationAngle = zAngle
    }
    
    @IBAction func scaleDidChange(_ sender: UISlider) {
        let scale = CGFloat(sender.value)
        layerTransformer?.scale = scale
    }
}


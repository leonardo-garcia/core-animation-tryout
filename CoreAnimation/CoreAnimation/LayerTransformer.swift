//
//  LayerTransformer.swift
//  CoreAnimation
//
//  Created by Leonardo Garcia  on 12/11/19.
//  Copyright © 2019 Leonardo Garcia . All rights reserved.
//

import Foundation
import UIKit

final class LayerTransformer {
    
    var zRotationAngle: CGFloat = 0 { didSet { updateTransforms() } }
    var scale: CGFloat = 1 { didSet { updateTransforms() } }

    private let layer: CALayer
    
    init(for layer: CALayer) {
        self.layer = layer
    }
    
    private func updateTransforms() {
        var rotationAndScaleMatrix = CATransform3DMakeRotation(zRotationAngle, 0, 0, 1)
        rotationAndScaleMatrix = CATransform3DScale(rotationAndScaleMatrix, scale, scale, 1)
        layer.transform = rotationAndScaleMatrix
    }
}

//
//  GradientContainerView.swift
//  CustomUITest
//
//  Created by Ostrenkiy on 19.07.2020.
//  Copyright © 2020 Ostrenkiy. All rights reserved.
//

import UIKit

class GradientContainerView: UIView {
    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }

    var colors: [CGColor] = [] {
        didSet {
            setLayerColors(colors: colors)
        }
    }

    var isHorizontal: Bool = false {
        didSet {
            setLayerColors(colors: colors)
        }
    }

    private func setLayerColors(colors: [CGColor]) {
        guard let gradientLayer = self.layer as? CAGradientLayer else {
            return
        }
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.5)

//        if isHorizontal {
//            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
//            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
//        } else {
//            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
//            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
//        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clear
        setLayerColors(colors: colors)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

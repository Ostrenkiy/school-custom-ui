//
//  UIView+fromNib.swift
//  CustomUITest
//
//  Created by Ostrenkiy on 20.07.2020.
//  Copyright © 2020 Ostrenkiy. All rights reserved.
//

import UIKit

public extension UIView {
    class func fromNib<T: UIView>(nibName: String) -> T {
        let bundle = Bundle(for: T.self)
        return bundle.loadNibNamed(
            nibName,
            owner: nil,
            options: nil
        )?.first as! T
    }

    class func fromNib<T: UIView>() -> T {
        return fromNib(nibName: String(describing: T.self))
    }
}

//
//  UIView + Extension.swift
//  Contacts
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
}


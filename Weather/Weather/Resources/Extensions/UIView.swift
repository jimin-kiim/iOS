//
//  UIView.swift
//  Weather
//
//  Created by 김지민 on 2022/05/10.
//

import UIKit

extension UIView {
    func roundCorners(cornerRadius: CGFloat, byRoundingCorners: UIRectCorner) {
        if #available(iOS 11.0, *) {
            clipsToBounds = true
            layer.cornerRadius = cornerRadius
            layer.maskedCorners = CACornerMask(rawValue: byRoundingCorners.rawValue)
        } else {
            let path = UIBezierPath(roundedRect: self.bounds,
                                    byRoundingCorners: byRoundingCorners,
                                    cornerRadii: CGSize(width:cornerRadius, height: cornerRadius))

            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.bounds
            maskLayer.path = path.cgPath

            layer.mask = maskLayer
        }
    }
}

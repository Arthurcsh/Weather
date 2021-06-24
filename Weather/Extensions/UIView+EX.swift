//
//  UIView+EX.swift
//  Weather Forecast
//
//  Created by Shcheng on 2021/6/23.
//  Copyright © 2021 JDC. All rights reserved.
//

import UIKit

extension UIView {
    func fillToSuperView() {
        guard let superView = superview else {
            return
        }
        
        self.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}

//
//  UIImageView+EX.swift
//  Weather Forecast
//
//  Created by Shcheng on 2021/6/23.
//  Copyright © 2021 JDC. All rights reserved.
//

import UIKit

extension UIImageView {
    typealias Builder = UIImageViewBuilder
 
    func loadImage(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
    
}

class UIImageViewBuilder: BuilderType {
    var contentMode: UIView.ContentMode = .scaleAspectFill
    
    func withContentMode(_ contentMode: UIView.ContentMode) -> UIImageViewBuilder{
        self.contentMode = contentMode
        
        return self
    }
    
    func build() -> UIImageView {
        let imageView = UIImageView()
        imageView.accessibilityIgnoresInvertColors = true
        imageView.contentMode = self.contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }
}

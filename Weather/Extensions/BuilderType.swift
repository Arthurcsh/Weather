//
//  BuilderType.swift
//  Weather Forecast
//
//  Created by Shcheng on 2021/6/23.
//  Copyright © 2021 JDC. All rights reserved.
//

import UIKit

protocol BuilderType {
    associatedtype builder
    
    func build() -> builder
}

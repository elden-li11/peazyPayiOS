//
//  ButtonExtension.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 5/5/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
   @objc func pulse() {
        let pulseVar = CASpringAnimation(keyPath: "transform.scale")
        
        pulseVar.duration = 0.5
        pulseVar.fromValue = 0.6
        pulseVar.toValue = 1.0
        pulseVar.initialVelocity = 0.9
        pulseVar.damping = 1.0
        
        layer.add(pulseVar, forKey:nil)
    }
    
}

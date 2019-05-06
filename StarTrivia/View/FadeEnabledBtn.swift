//
//  FadeEnabledBtn.swift
//  StarTrivia
//
//  Created by Juan Chavez on 5/6/19.
//  Copyright © 2019 Juan Chavez Montes. All rights reserved.
//

import UIKit

class FadeEnabledBtn : UIButton {
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                }
            }
        }
    }
}

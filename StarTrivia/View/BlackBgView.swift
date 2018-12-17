//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Juan Chavez Montes on 11/19/18.
//  Copyright © 2018 Juan Chavez Montes. All rights reserved.
//

import UIKit

class BlackBgView: UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
    
}

class BlackBgButton: UIButton {
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

//
//  CustomTextfieldOTP.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 18/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import Foundation
import UIKit


class CustomTextfieldOTP: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
       setLeftPadding(5)
       
    }

func setLeftPadding(_ amount: CGFloat) {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
    self.leftView = paddingView
    self.leftViewMode = .always
  }
}

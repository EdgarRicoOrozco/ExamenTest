//
//  Extensions+Utils.swift
//  ExamenTest
//
//  Created by Phinder 2022 on 26/02/23.
//

import UIKit

extension UITextField {
    func setPlaceholderTextColor(color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder != nil ? self.placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor: color])
    }
}

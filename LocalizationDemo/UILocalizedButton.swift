//
//  UILocalizedButton.swift
//  LocalizationDemo
//
//  Created by burak.ceylan on 24.04.18.
//  Copyright © 2018 de.burak.ceylan.dev.com. All rights reserved.
//

import UIKit

@IBDesignable final class UILocalizedButton: UIButton {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            setTitle(title(for: .normal)?.localized(bundle: .main, tableName: tableName), for: .normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        let title = self.title(for: .normal)?.localized()
        setTitle(title, for: .normal)
    }
}

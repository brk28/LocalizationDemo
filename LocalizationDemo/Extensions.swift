//
//  Extensions.swift
//  LocalizationDemo
//
//  Created by burak.ceylan on 24.04.18.
//  Copyright © 2018 de.burak.ceylan.dev.com. All rights reserved.
//

import Foundation


extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, bundle: bundle, value: self, comment: "")
    }
}

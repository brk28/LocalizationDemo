//
//  LocalizedEnums.swift
//  LocalizationDemo
//
//  Created by burak.ceylan on 24.04.18.
//  Copyright © 2018 de.burak.ceylan.dev.com. All rights reserved.
//

import UIKit


protocol Localizable {
    var tableName: String { get }
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized(bundle: .main, tableName: tableName)
    }
}


enum DataLoaderStrings: String, Localizable {
    case loadingData = "loading_data"
    case dataLoaded  = "data_loaded"
    
    var tableName: String {
        return "DataLoader"
    }
}

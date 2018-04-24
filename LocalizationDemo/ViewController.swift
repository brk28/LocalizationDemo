//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by burak.ceylan on 24.04.18.
//  Copyright © 2018 de.burak.ceylan.dev.com. All rights reserved.
//
//  https://medium.com/@marcosantadev/app-localization-tips-with-swift-4e9b2d9672c9
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "title".localized()
        let loadingString = DataLoaderStrings.loadingData.localized
        print(str)
        print(loadingString)

        let countFiles = 1
        let formatString = "pending_files_%d_%d".localized()
        let result = String(format: formatString, arguments: [countFiles, countFiles])
        print(result)
    }

}


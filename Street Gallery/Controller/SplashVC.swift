//
//  SplashVC.swift
//  Street Gallery
//
//  Created by Tifo Audi Alif Putra on 19/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(SplashVC.dismissSplashScreen), userInfo: nil, repeats: false)
    }
    
    @objc private func dismissSplashScreen() {
        performSegue(withIdentifier: SPLASH_SEGUE, sender: nil)
    }

    

}

//
//  PopVC.swift
//  Street Gallery
//
//  Created by Tifo Audi Alif Putra on 26/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var loadedImage: UIImage?
    
    func loadImage(forImage img: UIImage) {
        self.loadedImage = img
    }
    
    @objc func handleDoubleTap(sender: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imageView.image = loadedImage
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(PopVC.handleDoubleTap(sender:)))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
}

//
//  ImageViewController.swift
//  LoginScreen
//
//  Created by Kirill Korotaev on 18.10.2021.
//

import UIKit

class ImageViewController: UIViewController {

    // MARK: - @IBOutlet
    @IBOutlet weak var korotaeKN1ImageView: UIImageView!
    
    // MARK: - viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        korotaeKN1ImageView.layer.cornerRadius = 15
    }
}

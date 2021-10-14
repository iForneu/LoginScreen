//
//  PersonViewController.swift
//  LoginScreen
//
//  Created by Kirill Korotaev on 14.10.2021.
//

import UIKit

class PersonViewController: UIViewController {
    
    // MARK: - @IBOutlet
    @IBOutlet weak var korotaeKNImageView: UIImageView!
    
    // MARK: - viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        korotaeKNImageView.layer.cornerRadius = korotaeKNImageView.frame.width / 2
    }
    
}

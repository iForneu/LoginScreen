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
    
    var user: User!
    
    // MARK: - Background colors
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 137/255,
        green: 210/255,
        blue: 120/255,
        alpha: 1
    )
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        korotaeKN1ImageView.image = UIImage(named: user.person.secondImage)
    }
    
    // MARK: - IB Actions
    @IBAction func vkButtonPressed() {
        if let vkURL = URL(string: user.person.vkURL) {
            UIApplication.shared.open(vkURL)
        }
    }
    
    @IBAction func instButtonPressed() {
        if let instURL = URL(string: user.person.instURL) {
            UIApplication.shared.open(instURL)
        }
    }
    
    @IBAction func telegramButtonPressed() {
        if let telegramURL = URL(string: user.person.telegramURL) {
            UIApplication.shared.open(telegramURL)
        }
    }
    
    // MARK: - viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        korotaeKN1ImageView.layer.cornerRadius = korotaeKN1ImageView.frame.height / 2
    }
}

//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Kirill Korotaev on 05.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
// MARK: - IBOutlets
    @IBOutlet weak var welcomeLabel: UILabel!
    
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
        
        welcomeLabel.text = "Welcome, \(user.person.fullname)!"
    }
    
// MARK: - @IBActions
    @IBAction func buttonAction() {
        dismiss(animated: true)
    }
}

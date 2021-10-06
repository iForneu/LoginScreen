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
    
    var userName = ""
    
// MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
// MARK: - @IBActions
    @IBAction func buttonAction() {
        dismiss(animated: true)
    }
}

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
        
        title = user.person.fullname
        
        tabBarItem.title = user.person.fullname
        
        korotaeKNImageView.image = UIImage(named: user.person.firstImage)
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    
    // MARK: - viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        korotaeKNImageView.layer.cornerRadius = korotaeKNImageView.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}

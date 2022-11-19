//
//  LoginViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-19.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginBtnTapped(_ sender: Any) {
    }
    
    @IBAction func RegisterButtonTapped(_ sender: Any) {
        
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "Signup")
        navigationController?.pushViewController(vc, animated: true)
    }
}

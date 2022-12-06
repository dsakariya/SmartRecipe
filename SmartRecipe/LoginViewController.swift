//
//  LoginViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-19.
//

import UIKit
import FirebaseAuth
import CoreData

class LoginViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var Loginpassword: UITextField!
    @IBOutlet weak var LoginEmail: UITextField!
    @IBOutlet weak var BtnLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.LoginEmail.delegate=self
        self.Loginpassword.delegate=self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func LoginBtnTapped(_ sender: Any) {
        
        if LoginEmail.text==""||Loginpassword.text==""{
            let alert = UIAlertController(title: "Error", message: "Please enter password/username" , preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }else{
            Auth.auth().signIn(withEmail: LoginEmail.text!, password: Loginpassword.text!){(user,error) in
                if error==nil{
                    let view = self.storyboard?.instantiateViewController(withIdentifier: "bookmark")
                    self.present(view!, animated: true, completion: nil)
                    self.LoginEmail.text=""
                    self.Loginpassword.text=""
                }else{
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription , preferredStyle: .alert)
                    let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(action)
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func RegisterButtonTapped(_ sender: Any) {

        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "Signup")
        navigationController?.pushViewController(vc, animated: true)
    }
}

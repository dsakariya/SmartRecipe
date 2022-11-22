//
//  SignupViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-21.
//

import UIKit
import Firebase
import FirebaseAuth

class SignupViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var TxtPassword: UITextField!
   
    @IBAction func OnBtnLoginTapped(_ sender: Any) {
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "Login")
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func BtnonSignupTapped(_ sender: Any) {
        if TxtEmail.text==""{
            
            let alert = UIAlertController(title: "Error", message: "Please enter your email/password", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
                      alert.addAction(action)
                      self.present(alert, animated: true, completion: nil)
            
        }else{
            Auth.auth().createUser(withEmail: TxtEmail.text!, password: TxtPassword.text!){(user,error) in
                if error == nil {
                    let view=self.storyboard?.instantiateViewController(withIdentifier: "Login")
                    self.present(view!, animated: true,completion: nil)
                    
                }else{
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                                        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
                                        alert.addAction(action)
                                        self.present(alert, animated: true, completion: nil)
                }
 
            }
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.TxtEmail.delegate=self
        self.TxtPassword.delegate=self
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    

}

//
//  BookmarkViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-21.
//

import UIKit
import FirebaseAuth
import Firebase

class BookmarkViewController: UIViewController {

    @IBOutlet weak var LblStatus: UILabel!
    @IBOutlet weak var BtnSignout: UIButton!
    
    let user = Auth.auth().currentUser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = user {
                    LblStatus.text = "You are logged in with email: \(user.email!)"
                }

    }
    
    @IBAction func OnSignoutTapped(_ sender: Any) {
       
        if user != nil {
            do {
                try Auth.auth().signOut()
                
                let storyboard=UIStoryboard(name: "Main", bundle: nil)
                let vc=storyboard.instantiateViewController(withIdentifier: "Pantry")
                navigationController?.pushViewController(vc, animated: true)
                
            }
            catch let error as NSError{
                
            }
        }
    }
}

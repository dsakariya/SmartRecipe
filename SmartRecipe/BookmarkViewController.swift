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
    
    @IBOutlet weak var bkmkLabel: UILabel!
    let user = Auth.auth().currentUser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = user {
                    LblStatus.text = "You are logged in with email: \(user.email!)"
                }
        
        var ref:DatabaseReference!
                ref = Database.database().reference()
                ref.child("Recipe").child(user?.uid ?? "Guest").child("recipeName").getData(completion: {error, snapshot in
                    guard error == nil else {
                        print(error!.localizedDescription)
                        return;
                    }
                    self.bkmkLabel.text = snapshot?.value as? String;
                });
        

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

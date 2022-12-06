//
//  BookmarkViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-21.
//

import UIKit
import FirebaseAuth
import Firebase


struct recipes{
    var id : String
    var name : String
    var image : String
    var btn : String
}
class BookmarkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var ref:DatabaseReference!
    var table = [RecipeModel]()
    
    @IBOutlet weak var LblStatus: UILabel!
    @IBOutlet weak var BtnSignout: UIButton!
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var bkmkLabel: UILabel!
    let user = Auth.auth().currentUser
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = user {
            LblStatus.text = "You are logged in with email: \(user.email!)"
        }
        
        
    }
    
    @IBAction func OnSignoutTapped(_ sender: Any) {
        
    }
    
 }

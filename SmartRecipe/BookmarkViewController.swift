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
        var refRecipe=Database.database().reference().child("Recipe")
                ref = Database.database().reference().child("Recipe")
                ref.queryOrdered(byChild:"id").queryEqual(toValue:user?.email).observe( DataEventType.value, with: { (snapshot) in
                    if snapshot.childrenCount>0{
                        self.table.removeAll()
                        for child in snapshot.children.allObjects as! [DataSnapshot]{
                            let Object = child.value as? [String: AnyObject]
                            let id = Object?["id"]
                            let Name = Object?["recipeName"]
                            let btnUrl = Object?["link"]
                            let imageUrl = Object?["recipeImage"]
                            let rec = RecipeModel(id: id as? String, link: btnUrl as? String, recipeImage: imageUrl as? String, recipeName: Name as? String)
         
                            self.TableView.reloadData()
                        }
                    }
                }
                )                   self.table.append(rec)
        
    }
    
    @IBAction func OnSignoutTapped(_ sender: Any) {
        
    }
    
 }

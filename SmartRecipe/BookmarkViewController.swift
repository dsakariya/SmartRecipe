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
 
    let user = Auth.auth().currentUser
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = user {
            LblStatus.text = "You are logged in with email: \(user.email!)"
        }
        
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
                            self.table.append(rec)
                            self.TableView.reloadData()
                        }
                    }
                }
                )
        
    }
    
    @IBAction func OnSignoutTapped(_ sender: Any) {
        
        let auth=Auth.auth()
            do{
                try auth.signOut()
//                self.dismiss(animated: true,completion: nil)
                let storyboard=UIStoryboard(name: "Main", bundle: nil)
                let vc=storyboard.instantiateViewController(withIdentifier: "menu")
                navigationController?.pushViewController(vc, animated: true)
//                performSegue(withIdentifier: "BacktoHome", sender: nil)
                
                ViewController.user = nil
            }catch let SignoutError{
                print("Signout Error: \(SignoutError)")
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return table.count

        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell=TableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
            let recipe:RecipeModel
            
            recipe=table[indexPath.row]
            cell.Rname.text=recipe.recipeName
            if let urlString = recipe.recipeImage, let url = URL(string: urlString) {
                        if let data = try? Data(contentsOf: url) {
                            cell.Rimage.image = UIImage(data: data)
                        }
                }
           
            return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let recipe: RecipeModel
            recipe = table[indexPath.row]
            UIApplication.shared.open(NSURL(string: recipe.link ?? "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html")! as URL)
        }
 }

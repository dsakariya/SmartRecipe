//
//  SecondViewController.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-11-07.
//

import UIKit
import CoreData
import Firebase
import FirebaseAuth

class SecondViewController: UIViewController {

    @IBOutlet weak var dishImage1: UIImageView!
    @IBOutlet weak var dishImage2: UIImageView!
    @IBOutlet weak var dishImage3: UIImageView!
    @IBOutlet weak var dishImage4: UIImageView!
    @IBOutlet weak var dishImage5: UIImageView!
    @IBOutlet weak var dishImage6: UIImageView!
    @IBOutlet weak var dishImage7: UIImageView!
    @IBOutlet weak var dishImage8: UIImageView!
    @IBOutlet weak var dishImage9: UIImageView!
    @IBOutlet weak var dishImage10: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    
    let user = Auth.auth().currentUser
    var refRecipe: DatabaseReference!
    
   
    
    var text:String?
    
    static var url1 :String = ""
    static var url2 :String = ""
    static var url3 :String = ""
    static var url4 :String = ""
    static var url5 :String = ""
    static var url6 :String = ""
    static var url7 :String = ""
    static var url8 :String = ""
    static var url9 :String = ""
    static var url10 :String = ""

    
    var image1=""
    var image2=""

    
    
    
    @IBOutlet weak var bookmark1: UIButton!
    @IBOutlet weak var bookmark2: UIButton!
    @IBOutlet weak var bookmark3: UIButton!
    @IBOutlet weak var bookmark4: UIButton!
    
    
    @IBAction func Bookmark1Tapped(_ sender: Any) {
        
        
        let ref = Database.database().reference().child("Recipe")
        ref.child("Recipe").child(user?.uid ?? "Guest").child("recipeName").getData(completion: {error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
            let name=snapshot?.value as? String;

            if(self.label1.text==name){
                self.bookmark1.tintColor = .purple
            }

        });

        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label1.text! as String,
                          "recipeImage" :image1 as String,
                          "link":SecondViewController.url1 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark2Tapped(_ sender: Any) {
    }
    @IBAction func Bookmark3Tapped(_ sender: Any) {
    }
    @IBAction func Bookmark4Tapped(_ sender: Any) {
    }
    
    
    @IBAction func btn1Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string:SecondViewController.url1)! as URL)
    }
    @IBAction func btn2Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url2)! as URL)
    }
    @IBAction func btn3Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url3)! as URL)
    }
    @IBAction func btn4Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn5Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn6Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn7Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn8Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn9Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    @IBAction func btn10Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url4)! as URL)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()

        
            // Do any additional setup after loading the view.
            struct RecipeResponse: Decodable{
                let hits : [Hits]
            }
            struct Hits:Decodable{
                let recipe : Recipe
            }
            struct Recipe : Decodable{
                let label : String
                let url: String
                let ingredientLines :[String]
                let image : String
            }
            
        let urlString = text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        print(urlString!)
        let url = URL(string: urlString ?? "https://api.edamam.com/api/recipes/v2?type=public&q=avocado&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79")

            let task = URLSession.shared.dataTask(with: url!) { [self] (data, response, error) in
                        if error != nil {
                            print(error!)
                            
                        }
                        else{
                            if let data = data {
                                do {
                                    let result = try! JSONDecoder().decode(RecipeResponse.self, from: data)
                                    if result.hits.count>3
                                    {
                                        let hits = result.hits
                                        for hit in hits {
                                            print(hit.recipe.url)
                                        }
                                        DispatchQueue.main.async{
                                            self.label1?.text = result.hits[0].recipe.label
                                            self.label2?.text = result.hits[1].recipe.label
                                            self.label3?.text = result.hits[2].recipe.label
                                            self.label4?.text = result.hits[3].recipe.label
                                        }
                                        
                                        
                                        SecondViewController.url1 = result.hits[0].recipe.url
                                        SecondViewController.url2 = result.hits[1].recipe.url
                                        SecondViewController.url3 = result.hits[2].recipe.url
                                        SecondViewController.url4 = result.hits[3].recipe.url
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        let img = result.hits[0].recipe.image
                                        image1=img
                                        let url = URL(string: img)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage1?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                        let img1 = result.hits[1].recipe.image
                                        let url1 = URL(string: img1)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url1) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage2?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                        let img2 = result.hits[2].recipe.image
                                        let url2 = URL(string: img2)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url2) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage3?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                        let img3 = result.hits[3].recipe.image
                                        let url3 = URL(string: img3)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url3) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage4?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                    }
                                    else{
                                        let alert = UIAlertController(title: "Choose proper ingredients", message: "Please choose different ingredients as we cannot find recipes with choosen ingredients " , preferredStyle: .alert)
                                        let action = UIAlertAction(title: "Ok", style: .default, handler: {(action) in
                                            alert.dismiss(animated: true, completion: nil)
                                            self.navigationController?.popViewController(animated: true)
                                        })
                                        alert.addAction(action)
                                        present(alert, animated: true,completion: nil)
//                                        alert.addAction(action)
//                                        self.present(alert, animated: true, completion: nil)
//
                                    }
                                }
                                catch{
                                    print("JSon Parsing error")
                                }
                            }
                            
                        }
                    }
                    task.resume()
        }
    
    func loginpage(){
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "Login")
        navigationController?.pushViewController(vc, animated: true)
    }
        
    }



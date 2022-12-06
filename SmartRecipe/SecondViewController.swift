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
    var image3=""
    var image4=""
    var image5=""
    var image6=""
    var image7=""
    var image8=""
    var image9=""
    var image10=""
    
    @IBOutlet weak var bookmark1: UIButton!
    @IBOutlet weak var bookmark2: UIButton!
    @IBOutlet weak var bookmark3: UIButton!
    @IBOutlet weak var bookmark4: UIButton!
    @IBOutlet weak var bookmark5: UIButton!
    @IBOutlet weak var bookmark6: UIButton!
    @IBOutlet weak var bookmark7: UIButton!
    @IBOutlet weak var bookmark8: UIButton!
    @IBOutlet weak var bookmark9: UIButton!
    @IBOutlet weak var bookmark10: UIButton!
    
    @IBAction func Bookmark1Tapped(_ sender: Any) {
        
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label1.text! as String,
                          "recipeImage" :image1 as String,
                          "link":SecondViewController.url1 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark2Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label2.text! as String,
                          "recipeImage" :image2 as String,
                          "link":SecondViewController.url2 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark3Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label3.text! as String,
                          "recipeImage" :image3 as String,
                          "link":SecondViewController.url3 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark4Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label4.text! as String,
                          "recipeImage" :image4 as String,
                          "link":SecondViewController.url4 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark5Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label5.text! as String,
                          "recipeImage" :image5 as String,
                          "link":SecondViewController.url5 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
    }
    @IBAction func Bookmark6Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label6.text! as String,
                          "recipeImage" :image6 as String,
                          "link":SecondViewController.url6 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
    }
    @IBAction func Bookmark7Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label7.text! as String,
                          "recipeImage" :image7 as String,
                          "link":SecondViewController.url7 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
    }
    @IBAction func Bookmark8Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label8.text! as String,
                          "recipeImage" :image8 as String,
                          "link":SecondViewController.url8 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
    }
    @IBAction func Bookmark9Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label9.text! as String,
                          "recipeImage" :image9 as String,
                          "link":SecondViewController.url9 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark10Tapped(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label10.text! as String,
                          "recipeImage" :image10 as String,
                          "link":SecondViewController.url10 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            
            let alert = UIAlertController(title: "Bookmark", message: "You Recipe saved in Bookmark Tab", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
        
        }else{
            loginpage()
        }
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
        UIApplication.shared.open(NSURL(string: SecondViewController.url5)! as URL)
    }
    @IBAction func btn6Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url6)! as URL)
    }
    @IBAction func btn7Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url7)! as URL)
    }
    @IBAction func btn8Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url8)! as URL)
    }
    @IBAction func btn9Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url9)! as URL)
    }
    @IBAction func btn10Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: SecondViewController.url10)! as URL)
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
                                            self.label5?.text = result.hits[4].recipe.label
                                            self.label6?.text = result.hits[5].recipe.label
                                            self.label7?.text = result.hits[6].recipe.label
                                            self.label8?.text = result.hits[7].recipe.label
                                            self.label9?.text = result.hits[8].recipe.label
                                            self.label10?.text = result.hits[9].recipe.label
                                            
                                        }
                                        
                                        
                                        SecondViewController.url1 = result.hits[0].recipe.url
                                        SecondViewController.url2 = result.hits[1].recipe.url
                                        SecondViewController.url3 = result.hits[2].recipe.url
                                        SecondViewController.url4 = result.hits[3].recipe.url
                                        SecondViewController.url5 = result.hits[4].recipe.url
                                        SecondViewController.url6 = result.hits[5].recipe.url
                                        SecondViewController.url7 = result.hits[6].recipe.url
                                        SecondViewController.url8 = result.hits[7].recipe.url
                                        SecondViewController.url9 = result.hits[8].recipe.url
                                        SecondViewController.url10 = result.hits[9].recipe.url
                                        
                                        
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
                                        
                                        let img4 = result.hits[4].recipe.image
                                        let url4 = URL(string: img4)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url4) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage5?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                        
                                        let img5 = result.hits[5].recipe.image
                                        let url5 = URL(string: img5)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url5) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage6?.image = UIImage(data: data)
                                                }
                                            }
                                        }
                                        
                                        
                                        
                                        let img6 = result.hits[6].recipe.image
                                        let url6 = URL(string: img6)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url6) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage7?.image = UIImage(data: data)
                                                }
                                            }
                                        }

                                        let img7 = result.hits[7].recipe.image
                                        let url7 = URL(string: img7)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url7) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage8?.image = UIImage(data: data)
                                                }
                                            }
                                        }

                                        let img8 = result.hits[8].recipe.image
                                        let url8 = URL(string: img8)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url8) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage9?.image = UIImage(data: data)
                                                }
                                            }
                                        }

                                        let img9 = result.hits[9].recipe.image
                                        let url9 = URL(string: img9)!
                                        DispatchQueue.global().async {
                                            // Fetch Image Data
                                            if let data = try? Data(contentsOf: url9) {
                                                DispatchQueue.main.async {
                                                    // Create Image and Update Image View
                                                    self.dishImage10?.image = UIImage(data: data)
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



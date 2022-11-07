//
//  ViewController.swift
//  SmartRecipe
//
//  Created by Denish Kakadiya on 2022-10-09.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dishImage1: UIImageView!
    @IBOutlet weak var dishImage2: UIImageView!
    @IBOutlet weak var dishImage3: UIImageView!
    @IBOutlet weak var dishImage4: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var ingredients1: UIButton!
//    @IBOutlet weak var ingredients2: UIButton!
//    @IBOutlet weak var ingredients3: UIButton!
//    @IBOutlet weak var ingredients4: UIButton!
    @IBAction func ingredients1Tapped(_ sender: Any) {
        ingredients1.tintColor = .systemGray
        }
//    @IBAction func ingredients2Tapped(_ sender: Any) {
//        ingredients2.tintColor = .systemGray
//       }
//    @IBAction func ingredients3Tapped(_ sender: Any) {
//        ingredients3.tintColor = .systemGray
//       }
//    @IBAction func ingredients4Tapped(_ sender: Any) {
//        ingredients4.tintColor = .systemGray
//      }
    
    @IBAction func Submit(_ sender: Any) {
    }
    @IBOutlet weak var Submit: UIButton!
    
    @IBAction func onSubmit(_ sender: Any) {
//        let storyboard=self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
//        self.navigationController?.pushViewController(storyboard, animated: true )
        
        self.performSegue(withIdentifier: "screen", sender: self)
        
    }
    
    
    @IBAction func btn1Tapped(_ sender: Any) {
//        btn1.tintColor = .red
        UIApplication.shared.open(NSURL(string: "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html")! as URL)
    }
    @IBAction func btn2Tapped(_ sender: Any) {
//        btn1.tintColor = .red
        UIApplication.shared.open(NSURL(string: "http://norecipes.com/recipe/chicken-paprikash/")! as URL)
    }
    @IBAction func btn3Tapped(_ sender: Any) {
//        btn1.tintColor = .red
        UIApplication.shared.open(NSURL(string: "http://www.marthastewart.com/318981/baked-chicken")! as URL)
    }
    @IBAction func btn4Tapped(_ sender: Any) {
//        btn1.tintColor = .red
        UIApplication.shared.open(NSURL(string: "http://www.bonappetit.com/columns/breadwinner/article/how-to-get-your-kids-to-eat-sauce-let-them-cook-it-themselves")! as URL)
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
        //        struct Ingredients: Decodable{
        //            let ingredient: String
        //        }
                let url = URL(string: "https://api.edamam.com/api/recipes/v2?type=public&q=avocado&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79")
        let task = URLSession.shared.dataTask(with: url!) { [self] (data, response, error) in
                    if error != nil {
                        print(error!)
                    }
                    else{
                        if let data = data {
                            do {
        //                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                                let result = try! JSONDecoder().decode(RecipeResponse.self, from: data)
//                                print("Label " + (result.hits[0].recipe.label))
//                                print(result.hits[0].recipe.uri)
//                                print(result.hits[0].recipe.ingredientLines)
//                                print(result.hits[0].recipe)
////                                let ingredients = result.hits[0].recipe.ingredientLines
////                                for ingredient in ingredients {
////                                    print(ingredient)
////                                }
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
                                
                                let img = result.hits[0].recipe.image
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
                            catch{
                                print("JSon Parsing error")
                            }
                        }
                    }
                }
                task.resume()
    }
    @IBAction func DidTapbutton(){
        let vc = UIViewController()
        vc.view.backgroundColor  = .red
        navigationController?.pushViewController(vc, animated: true)
    }

}

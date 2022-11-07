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
    var queryList : [String] = []
    var ingredientSelected1 = false
    var ingredientSelected2 = false
    var ingredientSelected3 = false
    var ingredientSelected4 = false
    var ingredientSelected5 = false
    var ingredientSelected6 = false
    var ingredientSelected7 = false
    var ingredientSelected8 = false
    var ingredientSelected9 = false
    var ingredientSelected10 = false
    var ingredientSelected11 = false
    var ingredientSelected12 = false
    var ingredientSelected13 = false
    var ingredientSelected14 = false
    var ingredientSelected15 = false
    var ingredientSelected16 = false
    var ingredientSelected17 = false
    var ingredientSelected18 = false
    var ingredientSelected19 = false
    var ingredientSelected20 = false
    var ingredientSelected21 = false
    var ingredientSelected22 = false
    var ingredientSelected23 = false
    var ingredientSelected24 = false
    
    
    @IBOutlet weak var ingredients1: UIButton!
    @IBOutlet weak var ingredients2: UIButton!
    @IBOutlet weak var ingredients3: UIButton!
    @IBOutlet weak var ingredients4: UIButton!
    @IBOutlet weak var ingredients5: UIButton!
    @IBOutlet weak var ingredients6: UIButton!
    @IBOutlet weak var ingredients7: UIButton!
    @IBOutlet weak var ingredients8: UIButton!
    @IBOutlet weak var ingredients9: UIButton!
    @IBOutlet weak var ingredients10: UIButton!
    @IBOutlet weak var ingredients11: UIButton!
    @IBOutlet weak var ingredients12: UIButton!
    @IBOutlet weak var ingredients13: UIButton!
    @IBOutlet weak var ingredients14: UIButton!
    @IBOutlet weak var ingredients15: UIButton!
    @IBOutlet weak var ingredients16: UIButton!
    @IBOutlet weak var ingredients17: UIButton!
    @IBOutlet weak var ingredients18: UIButton!
    @IBOutlet weak var ingredients19: UIButton!
    @IBOutlet weak var ingredients20: UIButton!
    @IBOutlet weak var ingredients21: UIButton!
    @IBOutlet weak var ingredients22: UIButton!
    @IBOutlet weak var ingredients23: UIButton!
    @IBOutlet weak var ingredients24: UIButton!

    

    @IBAction func ingredients1Tapped(_ sender: Any) {
        if ingredientSelected1==false{
            ingredientSelected1=true
            ingredients1.tintColor = .systemGray
            queryList.append(ingredients1.titleLabel!.text ?? "")
            print(queryList)
        }
        else{ingredientSelected1=false
            ingredients1.tintColor = .systemBlue
            queryList.removeAll(where:{$0.contains(ingredients1.titleLabel!.text ?? "")} )
            print(queryList)
        }
    }
    @IBAction func ingredients2Tapped(_ sender: Any) {
        if ingredientSelected2==false{
            ingredientSelected2=true
            ingredients2.tintColor = .systemGray
            queryList.append(ingredients2.titleLabel!.text ?? "")}
        else{ingredientSelected2=false
            ingredients2.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients2.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients3Tapped(_ sender: Any) {
        if ingredientSelected3==false{
            ingredientSelected3=true
            ingredients3.tintColor = .systemGray
            queryList.append(ingredients3.titleLabel!.text ?? "")}
        else{ingredientSelected3=false
            ingredients3.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients3.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients4Tapped(_ sender: Any) {
        if ingredientSelected4==false{
            ingredientSelected4=true
            ingredients4.tintColor = .systemGray
            queryList.append(ingredients4.titleLabel!.text ?? "")}
        else{ingredientSelected4=false
            ingredients4.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients4.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients5Tapped(_ sender: Any) {
        if ingredientSelected5==false{
            ingredientSelected5=true
            ingredients5.tintColor = .systemGray
            queryList.append(ingredients5.titleLabel!.text ?? "")}
        else{ingredientSelected5=false
            ingredients5.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients5.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients6Tapped(_ sender: Any) {
        if ingredientSelected6==false{
            ingredientSelected6=true
            ingredients6.tintColor = .systemGray
            queryList.append(ingredients6.titleLabel!.text ?? "")}
        else{ingredientSelected6=false
            ingredients6.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients6.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients7Tapped(_ sender: Any) {
        if ingredientSelected7==false{
            ingredientSelected7=true
            ingredients7.tintColor = .systemGray
            queryList.append(ingredients7.titleLabel!.text ?? "")}
        else{ingredientSelected7=false
            ingredients7.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients7.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients8Tapped(_ sender: Any) {
        if ingredientSelected8==false{
            ingredientSelected8=true
            ingredients8.tintColor = .systemGray
            queryList.append(ingredients8.titleLabel!.text ?? "")}
        else{ingredientSelected8=false
            ingredients8.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients8.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients9Tapped(_ sender: Any) {
        if ingredientSelected9==false{
            ingredientSelected9=true
            ingredients9.tintColor = .systemGray
            queryList.append(ingredients9.titleLabel!.text ?? "")}
        else{ingredientSelected9=false
            ingredients9.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients9.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients10Tapped(_ sender: Any) {
        if ingredientSelected10==false{
            ingredientSelected10=true
            ingredients10.tintColor = .systemGray
            queryList.append(ingredients10.titleLabel!.text ?? "")}
        else{ingredientSelected10=false
            ingredients10.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients10.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients11Tapped(_ sender: Any) {
        if ingredientSelected11==false{
            ingredientSelected11=true
            ingredients11.tintColor = .systemGray
            queryList.append(ingredients11.titleLabel!.text ?? "")}
        else{ingredientSelected11=false
            ingredients11.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients11.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients12Tapped(_ sender: Any) {
        if ingredientSelected12==false{
            ingredientSelected12=true
            ingredients12.tintColor = .systemGray
            queryList.append(ingredients12.titleLabel!.text ?? "")}
        else{ingredientSelected12=false
            ingredients12.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients12.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients13Tapped(_ sender: Any) {
        if ingredientSelected13==false{
            ingredientSelected13=true
            ingredients13.tintColor = .systemGray
            queryList.append(ingredients13.titleLabel!.text ?? "")}
        else{ingredientSelected13=false
            ingredients13.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients13.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients14Tapped(_ sender: Any) {
        if ingredientSelected14==false{
            ingredientSelected14=true
            ingredients14.tintColor = .systemGray
            queryList.append(ingredients14.titleLabel!.text ?? "")}
        else{ingredientSelected14=false
            ingredients14.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients14.titleLabel!.text ?? "")} )
            }
        }
    @IBAction func ingredients15Tapped(_ sender: Any) {
        if ingredientSelected15==false{
            ingredientSelected15=true
            ingredients15.tintColor = .systemGray
            queryList.append(ingredients15.titleLabel!.text ?? "")}else{
                ingredientSelected15=false
                ingredients15.tintColor = .systemBlue
                queryList.removeAll(where: {$0.contains(ingredients15.titleLabel!.text ?? "")} )
                }
        }
    @IBAction func ingredients16Tapped(_ sender: Any) {
        if ingredientSelected16==false{
            ingredientSelected16=true
            ingredients16.tintColor = .systemGray
            queryList.append(ingredients16.titleLabel!.text ?? "")}
        else{ingredientSelected16=false
            ingredients16.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients16.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients17Tapped(_ sender: Any) {
        if ingredientSelected17==false{
            ingredientSelected17=true
            ingredients17.tintColor = .systemGray
            queryList.append(ingredients17.titleLabel!.text ?? "")}
        else{ingredientSelected17=false
            ingredients17.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients17.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients18Tapped(_ sender: Any) {
        if ingredientSelected18==false{
            ingredientSelected18=true
            ingredients18.tintColor = .systemGray
            queryList.append(ingredients18.titleLabel!.text ?? "")}
        else{ingredientSelected18=false
            ingredients18.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients18.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients19Tapped(_ sender: Any) {
        if ingredientSelected19==false{
            ingredientSelected19=true
            ingredients19.tintColor = .systemGray
            queryList.append(ingredients19.titleLabel!.text ?? "")}
        else{ingredientSelected19=false
            ingredients19.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients19.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients20Tapped(_ sender: Any) {
        if ingredientSelected20==false{
            ingredientSelected20=true
            ingredients20.tintColor = .systemGray
            queryList.append(ingredients20.titleLabel!.text ?? "")}
        else{ingredientSelected20=false
            ingredients20.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients20.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients21Tapped(_ sender: Any) {
        if ingredientSelected21==false{
            ingredientSelected21=true
            ingredients21.tintColor = .systemGray
            queryList.append(ingredients21.titleLabel!.text ?? "")}
        else{ingredientSelected21=false
            ingredients21.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients21.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients22Tapped(_ sender: Any) {
        if ingredientSelected22==false{
            ingredientSelected22=true
            ingredients22.tintColor = .systemGray
            queryList.append(ingredients22.titleLabel!.text ?? "")}
        else{ingredientSelected22=false
            ingredients22.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients22.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients23Tapped(_ sender: Any) {
        if ingredientSelected23==false{
            ingredientSelected23=true
            ingredients23.tintColor = .systemGray
            queryList.append(ingredients23.titleLabel!.text ?? "")}
        else{ingredientSelected23=false
            ingredients23.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients23.titleLabel!.text ?? "")} )
            
        } }
    @IBAction func ingredients24Tapped(_ sender: Any) {
        if ingredientSelected24==false{
            ingredientSelected24=true
            ingredients24.tintColor = .systemGray
            queryList.append(ingredients24.titleLabel!.text ?? "")}
        else{ingredientSelected24=false
            ingredients24.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients24.titleLabel!.text ?? "")} )
            
        }
        
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

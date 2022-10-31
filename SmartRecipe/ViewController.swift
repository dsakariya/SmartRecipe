//
//  ViewController.swift
//  SmartRecipe
//
//  Created by Denish Kakadiya on 2022-10-09.
//

import UIKit

class ViewController: UIViewController {

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
                    let uri: String
                    let ingredientLines :[String]
                }
        //        struct Ingredients: Decodable{
        //            let ingredient: String
        //        }
                let url = URL(string: "https://api.edamam.com/api/recipes/v2?type=public&q=chicken&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79")
                let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                    if error != nil {
                        print(error!)
                    }
                    else{
                        if let data = data {
                            do {
        //                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                                let result = try! JSONDecoder().decode(RecipeResponse.self, from: data)
                                print(result.hits[0].recipe.label)
                                print(result.hits[0].recipe.uri)
                                print(result.hits[0].recipe.ingredientLines)
        //                        print(jsonResult)
        //                        print(jsonResult["hits"]!!)
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


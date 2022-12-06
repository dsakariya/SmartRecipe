//
//  ViewController.swift
//  SmartRecipe
//
//  Created by Denish Kakadiya on 2022-10-09.
//
import UIKit
import Firebase
import FirebaseAuth
import CoreData

class ViewController: UIViewController {
    
    
    var refRecipe: DatabaseReference!
    
    
    
    let user = Auth.auth().currentUser
    var image1=""
    var Burl1=url1
    var image2=""
    var Burl2=url2
    
    @IBOutlet weak var ShowBookmark: UIButton!
    
    
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
    var ingredientSelected25 = false
    var ingredientSelected26 = false
    var ingredientSelected27 = false
    var ingredientSelected28 = false
    var ingredientSelected29 = false
    var ingredientSelected30 = false
    var ingredientSelected31 = false
    var ingredientSelected32 = false
    var ingredientSelected33 = false
    var ingredientSelected34 = false
    var ingredientSelected35 = false
    var ingredientSelected36 = false
    var ingredientSelected37 = false
    var ingredientSelected38 = false
    var ingredientSelected39 = false
    var ingredientSelected40 = false
    var ingredientSelected41 = false
    var ingredientSelected42 = false
    var ingredientSelected43 = false
    var ingredientSelected44 = false
    var ingredientSelected45 = false
    var ingredientSelected46 = false
    var ingredientSelected47 = false
    var ingredientSelected48 = false
    var ingredientSelected49 = false
    var ingredientSelected50 = false
    var ingredientSelected51 = false
    var ingredientSelected52 = false
    var ingredientSelected53 = false
    var ingredientSelected54 = false
    var ingredientSelected55 = false
    var ingredientSelected56 = false
    var ingredientSelected57 = false
    var ingredientSelected58 = false
    var ingredientSelected59 = false
    var ingredientSelected60 = false
    var ingredientSelected61 = false
    var ingredientSelected62 = false
    
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
    @IBOutlet weak var ingredients25: UIButton!
    @IBOutlet weak var ingredients26: UIButton!
    @IBOutlet weak var ingredients27: UIButton!
    @IBOutlet weak var ingredients28: UIButton!
    @IBOutlet weak var ingredients29: UIButton!
    @IBOutlet weak var ingredients30: UIButton!
    @IBOutlet weak var ingredients31: UIButton!
    @IBOutlet weak var ingredients32: UIButton!
    @IBOutlet weak var ingredients33: UIButton!
    @IBOutlet weak var ingredients34: UIButton!
    @IBOutlet weak var ingredients35: UIButton!
    @IBOutlet weak var ingredients36: UIButton!
    @IBOutlet weak var ingredients37: UIButton!
    @IBOutlet weak var ingredients38: UIButton!
    @IBOutlet weak var ingredients39: UIButton!
    @IBOutlet weak var ingredients40: UIButton!
    @IBOutlet weak var ingredients41: UIButton!
    @IBOutlet weak var ingredients42: UIButton!
    @IBOutlet weak var ingredients43: UIButton!
    @IBOutlet weak var ingredients44: UIButton!
    @IBOutlet weak var ingredients45: UIButton!
    @IBOutlet weak var ingredients46: UIButton!
    @IBOutlet weak var ingredients47: UIButton!
    @IBOutlet weak var ingredients48: UIButton!
    @IBOutlet weak var ingredients49: UIButton!
    @IBOutlet weak var ingredients50: UIButton!
    @IBOutlet weak var ingredients51: UIButton!
    @IBOutlet weak var ingredients52: UIButton!
    @IBOutlet weak var ingredients53: UIButton!
    @IBOutlet weak var ingredients54: UIButton!
    @IBOutlet weak var ingredients55: UIButton!
    @IBOutlet weak var ingredients56: UIButton!
    @IBOutlet weak var ingredients57: UIButton!
    @IBOutlet weak var ingredients58: UIButton!
    @IBOutlet weak var ingredients59: UIButton!
    
    @IBOutlet weak var Bookmark:UIButton!
    @IBOutlet weak var Submit: UIButton!
    
    
    
    @IBAction func OnClick(_ sender: Any) {
        self.performSegue(withIdentifier: "screen", sender: self)
        
    }
    @IBOutlet weak var Bookmark2: UIButton!
    
    
    @IBAction func Bookmark2(_ sender: Any) {
        
        refRecipe = Database.database().reference().child("Recipe");
        if user != nil {
            
            let key = refRecipe.childByAutoId().key
            let recipe = ["id":user?.email,
                          "recipeName": label2.text! as String,
                          "recipeImage" :image2 as String,
                          "link":Burl2 as String
            ]
            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
            //Dishant Put alert box "Recipe Bookmarked!!!"
            
//            let view = self.storyboard?.instantiateViewController(withIdentifier: "bookmark")
//            self.present(view!, animated: true, completion: nil)
            
        }else{
            loginpage()
        }
        
    }
    @IBAction func Bookmark(_ sender: Any) {
        
        let ref = Database.database().reference()


        ref.child("Recipe").child(user?.uid ?? "Guest").child("recipeName").getData(completion: {error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
            var name=snapshot?.value as? String;

            if(self.label1.text==name){
                self.Bookmark.tintColor = .purple
            }

        });

        refRecipe = Database.database().reference().child("Recipe");
        
        if user != nil {
            
//            let key = refRecipe.childByAutoId().key
//            let recipe = ["id":user?.email,
//                          "recipeName": label1.text! as String,
//                          "recipeImage" :image1 as String,
//                          "link":Burl1 as String
//            ]
//            refRecipe.child("abc\(Int.random(in: 0..<1000))").setValue(recipe)
//            
//            
            let view = self.storyboard?.instantiateViewController(withIdentifier: "bookmark")
            self.present(view!, animated: true, completion: nil)
            
        }else{
            loginpage()
        }
    }
    
    func loginpage(){
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "Login")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passData=segue.destination as! SecondViewController
        let query = queryList.joined(separator: " ")
        passData.text="https://api.edamam.com/api/recipes/v2?type=public&q=\(query)&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79"
    }
    
    
    @IBAction func showBookmarkTapped(_ sender: Any) {
        if user != nil {
            let view = self.storyboard?.instantiateViewController(withIdentifier: "bookmark")
            self.present(view!, animated: true, completion: nil)

        }else{
            loginpage()
        }
        
    }
    
    @IBAction func ingredients1Tapped(_ sender: Any) {
        if ingredientSelected1==false{
            ingredientSelected1=true
            ingredients1.backgroundColor = .systemBlue
            queryList.append(ingredients1.titleLabel!.text ?? "")
            print(queryList)
        }
        else{ingredientSelected1=false
            ingredients1.backgroundColor = .systemGray
            queryList.removeAll(where:{$0.contains(ingredients1.titleLabel!.text ?? "")} )
            print(queryList)
        }
    }
    @IBAction func ingredients2Tapped(_ sender: Any) {
        if ingredientSelected2==false{
            ingredientSelected2=true
            ingredients2.backgroundColor = .systemBlue
            queryList.append(ingredients2.titleLabel!.text ?? "")}
        else{ingredientSelected2=false
            ingredients2.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients2.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients3Tapped(_ sender: Any) {
        if ingredientSelected3==false{
            ingredientSelected3=true
            ingredients3.backgroundColor = .systemBlue
            queryList.append(ingredients3.titleLabel!.text ?? "")}
        else{ingredientSelected3=false
            ingredients3.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients3.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients4Tapped(_ sender: Any) {
        if ingredientSelected4==false{
            ingredientSelected4=true
            ingredients4.backgroundColor = .systemBlue
            queryList.append(ingredients4.titleLabel!.text ?? "")}
        else{ingredientSelected4=false
            ingredients4.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients4.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients5Tapped(_ sender: Any) {
        if ingredientSelected5==false{
            ingredientSelected5=true
            ingredients5.backgroundColor = .systemBlue
            queryList.append(ingredients5.titleLabel!.text ?? "")}
        else{ingredientSelected5=false
            ingredients5.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients5.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients6Tapped(_ sender: Any) {
        if ingredientSelected6==false{
            ingredientSelected6=true
            ingredients6.backgroundColor = .systemBlue
            queryList.append(ingredients6.titleLabel!.text ?? "")}
        else{ingredientSelected6=false
            ingredients6.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients6.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients7Tapped(_ sender: Any) {
        if ingredientSelected7==false{
            ingredientSelected7=true
            ingredients7.backgroundColor = .systemBlue
            queryList.append(ingredients7.titleLabel!.text ?? "")}
        else{ingredientSelected7=false
            ingredients7.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients7.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients8Tapped(_ sender: Any) {
        if ingredientSelected8==false{
            ingredientSelected8=true
            ingredients8.backgroundColor = .systemBlue
            queryList.append(ingredients8.titleLabel!.text ?? "")}
        else{ingredientSelected8=false
            ingredients8.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients8.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients9Tapped(_ sender: Any) {
        if ingredientSelected9==false{
            ingredientSelected9=true
            ingredients9.backgroundColor = .systemBlue
            queryList.append(ingredients9.titleLabel!.text ?? "")}
        else{ingredientSelected9=false
            ingredients9.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients9.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients10Tapped(_ sender: Any) {
        if ingredientSelected10==false{
            ingredientSelected10=true
            ingredients10.backgroundColor = .systemBlue
            queryList.append(ingredients10.titleLabel!.text ?? "")}
        else{ingredientSelected10=false
            ingredients10.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients10.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients11Tapped(_ sender: Any) {
        if ingredientSelected11==false{
            ingredientSelected11=true
            ingredients11.backgroundColor = .systemBlue
            queryList.append(ingredients11.titleLabel!.text ?? "")}
        else{ingredientSelected11=false
            ingredients11.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients11.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients12Tapped(_ sender: Any) {
        if ingredientSelected12==false{
            ingredientSelected12=true
            ingredients12.backgroundColor = .systemBlue
            queryList.append(ingredients12.titleLabel!.text ?? "")}
        else{ingredientSelected12=false
            ingredients12.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients12.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients13Tapped(_ sender: Any) {
        if ingredientSelected13==false{
            ingredientSelected13=true
            ingredients13.backgroundColor = .systemBlue
            queryList.append(ingredients13.titleLabel!.text ?? "")}
        else{ingredientSelected13=false
            ingredients13.tintColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients13.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients14Tapped(_ sender: Any) {
        if ingredientSelected14==false{
            ingredientSelected14=true
            ingredients14.backgroundColor = .systemBlue
            queryList.append(ingredients14.titleLabel!.text ?? "")}
        else{ingredientSelected14=false
            ingredients14.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients14.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients15Tapped(_ sender: Any) {
        if ingredientSelected15==false{
            ingredientSelected15=true
            ingredients15.backgroundColor = .systemBlue
            queryList.append(ingredients15.titleLabel!.text ?? "")}else{
                ingredientSelected15=false
                ingredients15.backgroundColor = .systemGray
                queryList.removeAll(where: {$0.contains(ingredients15.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients16Tapped(_ sender: Any) {
        if ingredientSelected16==false{
            ingredientSelected16=true
            ingredients16.backgroundColor = .systemBlue
            queryList.append(ingredients16.titleLabel!.text ?? "")}
        else{ingredientSelected16=false
            ingredients16.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients16.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients17Tapped(_ sender: Any) {
        if ingredientSelected17==false{
            ingredientSelected17=true
            ingredients17.backgroundColor = .systemBlue
            queryList.append(ingredients17.titleLabel!.text ?? "")}
        else{ingredientSelected17=false
            ingredients17.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients17.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients18Tapped(_ sender: Any) {
        if ingredientSelected18==false{
            ingredientSelected18=true
            ingredients18.backgroundColor = .systemBlue
            queryList.append(ingredients18.titleLabel!.text ?? "")}
        else{ingredientSelected18=false
            ingredients18.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients18.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients19Tapped(_ sender: Any) {
        if ingredientSelected19==false{
            ingredientSelected19=true
            ingredients19.backgroundColor = .systemBlue
            queryList.append(ingredients19.titleLabel!.text ?? "")}
        else{ingredientSelected19=false
            ingredients19.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients19.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients20Tapped(_ sender: Any) {
        if ingredientSelected20==false{
            ingredientSelected20=true
            ingredients20.backgroundColor = .systemBlue
            queryList.append(ingredients20.titleLabel!.text ?? "")}
        else{ingredientSelected20=false
            ingredients20.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients20.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients21Tapped(_ sender: Any) {
        if ingredientSelected21==false{
            ingredientSelected21=true
            ingredients21.backgroundColor = .systemBlue
            queryList.append(ingredients21.titleLabel!.text ?? "")}
        else{ingredientSelected21=false
            ingredients21.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients21.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients22Tapped(_ sender: Any) {
        if ingredientSelected22==false{
            ingredientSelected22=true
            ingredients22.backgroundColor = .systemBlue
            queryList.append(ingredients22.titleLabel!.text ?? "")}
        else{ingredientSelected22=false
            ingredients22.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients22.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients23Tapped(_ sender: Any) {
        if ingredientSelected23==false{
            ingredientSelected23=true
            ingredients23.backgroundColor = .systemBlue
            queryList.append(ingredients23.titleLabel!.text ?? "")}
        else{ingredientSelected23=false
            ingredients23.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients23.titleLabel!.text ?? "")} )
            
        } }
    @IBAction func ingredients24Tapped(_ sender: Any) {
        if ingredientSelected24==false{
            ingredientSelected24=true
            ingredients24.backgroundColor = .systemBlue
            queryList.append(ingredients24.titleLabel!.text ?? "")}
        else{ingredientSelected24=false
            ingredients24.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients24.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients25Tapped(_ sender: Any) {
        if ingredientSelected25==false{
            ingredientSelected25=true
            ingredients25.backgroundColor = .systemBlue
            queryList.append(ingredients25.titleLabel!.text ?? "")}
        else{
            ingredientSelected25=false
            ingredients25.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients25.titleLabel!.text ?? "")} )
        }
    }
    @IBAction func ingredients26Tapped(_ sender: Any) {
        if ingredientSelected26==false{
            ingredientSelected26=true
            ingredients26.backgroundColor = .systemBlue
            queryList.append(ingredients26.titleLabel!.text ?? "")}
        else{
            ingredientSelected26=false
            ingredients26.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients26.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients27Tapped(_ sender: Any) {
        if ingredientSelected27==false{
            ingredientSelected27=true
            ingredients27.backgroundColor = .systemBlue
            queryList.append(ingredients27.titleLabel!.text ?? "")}
        else{ingredientSelected27=false
            ingredients27.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients27.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients28Tapped(_ sender: Any) {
        if ingredientSelected28==false{
            ingredientSelected28=true
            ingredients28.backgroundColor = .systemBlue
            queryList.append(ingredients28.titleLabel!.text ?? "")}
        else{ingredientSelected28=false
            ingredients28.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients28.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients29Tapped(_ sender: Any) {if ingredientSelected29==false{ ingredientSelected29=true
        ingredients29.backgroundColor = .systemBlue
        queryList.append(ingredients29.titleLabel!.text ?? "")}
        else{ingredientSelected29=false
            ingredients29.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients29.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients30Tapped(_ sender: Any) {if ingredientSelected30==false{ ingredientSelected30=true
        ingredients30.backgroundColor = .systemBlue
        queryList.append(ingredients30.titleLabel!.text ?? "")}else{ingredientSelected30=false
            ingredients30.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients30.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients31Tapped(_ sender: Any) {if ingredientSelected31==false{ ingredientSelected31=true
        ingredients31.backgroundColor = .systemBlue
        queryList.append(ingredients31.titleLabel!.text ?? "")}else{ingredientSelected31=false
            ingredients31.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients31.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients32Tapped(_ sender: Any) {if ingredientSelected32==false{ ingredientSelected32=true
        ingredients32.backgroundColor = .systemBlue
        queryList.append(ingredients32.titleLabel!.text ?? "")}else{ingredientSelected32=false
            ingredients32.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients32.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients33Tapped(_ sender: Any) {if ingredientSelected33==false{ ingredientSelected33=true
        ingredients33.backgroundColor = .systemBlue
        queryList.append(ingredients33.titleLabel!.text ?? "")}else{ingredientSelected33=false
            ingredients33.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients33.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients34Tapped(_ sender: Any) {if ingredientSelected34==false{ ingredientSelected34=true
        ingredients34.backgroundColor = .systemBlue
        queryList.append(ingredients34.titleLabel!.text ?? "")}else{ingredientSelected34=false
            ingredients34.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients34.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients35Tapped(_ sender: Any) {if ingredientSelected35==false{ ingredientSelected35=true
        ingredients35.backgroundColor = .systemBlue
        queryList.append(ingredients35.titleLabel!.text ?? "")}else{ingredientSelected35=false
            ingredients35.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients35.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients36Tapped(_ sender: Any) {if ingredientSelected36==false{ ingredientSelected36=true
        ingredients36.backgroundColor = .systemBlue
        queryList.append(ingredients36.titleLabel!.text ?? "")}else{ingredientSelected36=false
            ingredients36.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients36.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients37Tapped(_ sender: Any) {if ingredientSelected37==false{ ingredientSelected37=true
        ingredients37.backgroundColor = .systemBlue
        queryList.append(ingredients37.titleLabel!.text ?? "")}else{ingredientSelected37=false
            ingredients37.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients37.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients38Tapped(_ sender: Any) {if ingredientSelected38==false{ ingredientSelected38=true
        ingredients38.backgroundColor = .systemBlue
        queryList.append(ingredients38.titleLabel!.text ?? "")}else{ingredientSelected38=false
            ingredients38.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients38.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients39Tapped(_ sender: Any) {if ingredientSelected39==false{ ingredientSelected39=true
        ingredients39.backgroundColor = .systemBlue
        queryList.append(ingredients39.titleLabel!.text ?? "")}else{ingredientSelected39=false
            ingredients39.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients39.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients40Tapped(_ sender: Any) {if ingredientSelected40==false{ ingredientSelected40=true
        ingredients40.backgroundColor = .systemBlue
        queryList.append(ingredients40.titleLabel!.text ?? "")}else{ingredientSelected40=false
            ingredients40.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients40.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients41Tapped(_ sender: Any) {if ingredientSelected41==false{ ingredientSelected41=true
        ingredients41.backgroundColor = .systemBlue
        queryList.append(ingredients41.titleLabel!.text ?? "")}else{ingredientSelected41=false
            ingredients41.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients41.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients42Tapped(_ sender: Any) {if ingredientSelected42==false{ ingredientSelected42=true
        ingredients42.backgroundColor = .systemBlue
        queryList.append(ingredients42.titleLabel!.text ?? "")}else{ingredientSelected42=false
            ingredients42.tintColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients42.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients43Tapped(_ sender: Any) {if ingredientSelected43==false{ ingredientSelected43=true
        ingredients43.backgroundColor = .systemBlue
        queryList.append(ingredients43.titleLabel!.text ?? "")}else{ingredientSelected43=false
            ingredients43.tintColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients43.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients44Tapped(_ sender: Any) {if ingredientSelected44==false{ ingredientSelected44=true
        ingredients44.backgroundColor = .systemBlue
        queryList.append(ingredients44.titleLabel!.text ?? "")}else{ingredientSelected44=false
            ingredients44.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients44.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients45Tapped(_ sender: Any) {if ingredientSelected45==false{ ingredientSelected45=true
        ingredients45.backgroundColor = .systemBlue
        queryList.append(ingredients45.titleLabel!.text ?? "")}else{ingredientSelected45=false
            ingredients45.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients45.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients46Tapped(_ sender: Any) {if ingredientSelected46==false{ ingredientSelected46=true
        ingredients46.backgroundColor = .systemBlue
        queryList.append(ingredients46.titleLabel!.text ?? "")}else{ingredientSelected46=false
            ingredients46.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients46.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients47Tapped(_ sender: Any) {if ingredientSelected47==false{ ingredientSelected47=true
        ingredients47.backgroundColor = .systemBlue
        queryList.append(ingredients47.titleLabel!.text ?? "")}else{ingredientSelected47=false
            ingredients47.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients47.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients48Tapped(_ sender: Any) {if ingredientSelected48==false{ ingredientSelected48=true
        ingredients48.backgroundColor = .systemBlue
        queryList.append(ingredients48.titleLabel!.text ?? "")}else{ingredientSelected48=false
            ingredients48.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients48.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients49Tapped(_ sender: Any) {if ingredientSelected49==false{ ingredientSelected49=true
        ingredients49.backgroundColor = .systemBlue
        queryList.append(ingredients49.titleLabel!.text ?? "")}else{ingredientSelected49=false
            ingredients49.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients49.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients50Tapped(_ sender: Any) {if ingredientSelected50==false{ ingredientSelected50=true
        ingredients50.backgroundColor = .systemBlue
        queryList.append(ingredients50.titleLabel!.text ?? "")}else{ingredientSelected50=false
            ingredients50.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients50.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients51Tapped(_ sender: Any) {if ingredientSelected51==false{ ingredientSelected51=true
        ingredients51.backgroundColor = .systemBlue
        queryList.append(ingredients51.titleLabel!.text ?? "")}else{ingredientSelected51=false
            ingredients51.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients51.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients52Tapped(_ sender: Any) {if ingredientSelected52==false{ ingredientSelected52=true
        ingredients52.backgroundColor = .systemBlue
        queryList.append(ingredients52.titleLabel!.text ?? "")}else{ingredientSelected52=false
            ingredients52.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients52.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients53Tapped(_ sender: Any) {if ingredientSelected53==false{ ingredientSelected53=true
        ingredients53.backgroundColor = .systemBlue
        queryList.append(ingredients53.titleLabel!.text ?? "")}else{ingredientSelected53=false
            ingredients53.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients53.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients54Tapped(_ sender: Any) {if ingredientSelected54==false{ ingredientSelected54=true
        ingredients54.backgroundColor = .systemBlue
        queryList.append(ingredients54.titleLabel!.text ?? "")}else{ingredientSelected54=false
            ingredients54.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients54.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients55Tapped(_ sender: Any) {if ingredientSelected55==false{ ingredientSelected55=true
        ingredients55.backgroundColor = .systemBlue
        queryList.append(ingredients55.titleLabel!.text ?? "")}else{ingredientSelected55=false
            ingredients55.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients55.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients56Tapped(_ sender: Any) {if ingredientSelected56==false{ ingredientSelected56=true
        ingredients56.backgroundColor = .systemBlue
        queryList.append(ingredients56.titleLabel!.text ?? "")}else{ingredientSelected56=false
            ingredients56.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients56.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients57Tapped(_ sender: Any) {if ingredientSelected57==false{ ingredientSelected57=true
        ingredients57.backgroundColor = .systemBlue
        queryList.append(ingredients57.titleLabel!.text ?? "")}else{ingredientSelected57=false
            ingredients57.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients57.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients58Tapped(_ sender: Any) {if ingredientSelected58==false{ ingredientSelected58=true
        ingredients58.backgroundColor = .systemBlue
        queryList.append(ingredients58.titleLabel!.text ?? "")}else{ingredientSelected58=false
            ingredients58.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients58.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients59Tapped(_ sender: Any) {if ingredientSelected59==false{ ingredientSelected59=true
        ingredients59.backgroundColor = .systemBlue
        queryList.append(ingredients59.titleLabel!.text ?? "")}else{ingredientSelected59=false
            ingredients59.backgroundColor = .systemGray
            queryList.removeAll(where: {$0.contains(ingredients59.titleLabel!.text ?? "")} ) } }
    
    
    //
    
    static var url1:String=""
    static var url2:String=""
    static var url3:String=""
    static var url4:String=""
    static var url5:String=""
    static var url6:String=""
    static var url7:String=""
    static var url8:String=""
    static var url9:String=""
    static var url10:String=""
    
    
    @IBAction func btn1Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url1)! as URL)
    }
    @IBAction func btn2Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url2)! as URL)
    }
    @IBAction func btn3Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url3)! as URL)
    }
    @IBAction func btn4Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url4)! as URL)
    }
    @IBAction func btn5Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url5)! as URL)
    }
    @IBAction func btn6Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url6)! as URL)
    }
    @IBAction func btn7Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url7)! as URL)
    }
    @IBAction func btn8Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url8)! as URL)
    }
    @IBAction func btn9Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url9)! as URL)
    }
    @IBAction func btn10Tapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: ViewController.url10)! as URL)
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
        struct URLs: Decodable{
            let url1:String
        }
        
        let url = URL(string: "https://api.edamam.com/api/recipes/v2?type=public&q=avocado&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79")
        let task = URLSession.shared.dataTask(with: url!) { [self] (data, response, error) in
            if error != nil {
                print(error!)
            }
            else{
                if let data = data {
                    do {
                        
                        let result = try! JSONDecoder().decode(RecipeResponse.self, from: data)
                        
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
                            self.label10?.text = result.hits[11].recipe.label
                        }
                        
                        ViewController.url1 = result.hits[0].recipe.url
                        ViewController.url2 = result.hits[1].recipe.url
                        ViewController.url3 = result.hits[2].recipe.url
                        ViewController.url4 = result.hits[3].recipe.url
                        ViewController.url5 = result.hits[4].recipe.url
                        ViewController.url6 = result.hits[5].recipe.url
                        ViewController.url7 = result.hits[6].recipe.url
                        ViewController.url8 = result.hits[7].recipe.url
                        ViewController.url9 = result.hits[8].recipe.url
                        ViewController.url10 = result.hits[11].recipe.url
                        
                        
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
                        image1=img1
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
                        image2=img2
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
                        let img9 = result.hits[11].recipe.image
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
                    catch{
                        print("JSon Parsing error")
                    }
                }
            }
        }
        task.resume()
    }
    
}




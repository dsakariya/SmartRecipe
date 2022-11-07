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
    @IBOutlet weak var ingredients60: UIButton!
    @IBOutlet weak var ingredients61: UIButton!
    @IBOutlet weak var ingredients62: UIButton!
    
    @IBOutlet weak var Submit: UIButton!
    
    @IBAction func OnClick(_ sender: Any) {
        
        self.performSegue(withIdentifier: "screen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passData=segue.destination as! SecondViewController
        var query = queryList.joined(separator: "%20")
        passData.text="https://api.edamam.com/api/recipes/v2?type=public&q=\(query)&app_id=907d2b4b&app_key=db6697b492e4a4b02a8f3ea2b44abb79"
    }
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
    @IBAction func ingredients25Tapped(_ sender: Any) {
        if ingredientSelected25==false{
            ingredientSelected25=true
            ingredients25.tintColor = .systemGray
            queryList.append(ingredients25.titleLabel!.text ?? "")}
        else{
            ingredientSelected25=false
            ingredients25.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients25.titleLabel!.text ?? "")} )
            }
    }
    @IBAction func ingredients26Tapped(_ sender: Any) {
        if ingredientSelected26==false{
            ingredientSelected26=true
            ingredients26.tintColor = .systemGray
            queryList.append(ingredients26.titleLabel!.text ?? "")}
        else{
            ingredientSelected26=false
            ingredients26.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients26.titleLabel!.text ?? "")} )
            
        }
        
    }
    @IBAction func ingredients27Tapped(_ sender: Any) {
        if ingredientSelected27==false{
            ingredientSelected27=true
            ingredients27.tintColor = .systemGray
            queryList.append(ingredients27.titleLabel!.text ?? "")}
        else{ingredientSelected27=false
                ingredients27.tintColor = .systemBlue
                queryList.removeAll(where: {$0.contains(ingredients27.titleLabel!.text ?? "")} )
                
            }
        
    }
    @IBAction func ingredients28Tapped(_ sender: Any) {
        if ingredientSelected28==false{
            ingredientSelected28=true
            ingredients28.tintColor = .systemGray
            queryList.append(ingredients28.titleLabel!.text ?? "")}
        else{ingredientSelected28=false
                ingredients28.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients28.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients29Tapped(_ sender: Any) {if ingredientSelected29==false{ ingredientSelected29=true
        ingredients29.tintColor = .systemGray
        queryList.append(ingredients29.titleLabel!.text ?? "")}
        else{ingredientSelected29=false
            ingredients29.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients29.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients30Tapped(_ sender: Any) {if ingredientSelected30==false{ ingredientSelected30=true
        ingredients30.tintColor = .systemGray
        queryList.append(ingredients30.titleLabel!.text ?? "")}else{ingredientSelected30=false
            ingredients30.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients30.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients31Tapped(_ sender: Any) {if ingredientSelected31==false{ ingredientSelected31=true
        ingredients31.tintColor = .systemGray
        queryList.append(ingredients31.titleLabel!.text ?? "")}else{ingredientSelected31=false
            ingredients31.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients31.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients32Tapped(_ sender: Any) {if ingredientSelected32==false{ ingredientSelected32=true
        ingredients32.tintColor = .systemGray
        queryList.append(ingredients32.titleLabel!.text ?? "")}else{ingredientSelected32=false
            ingredients32.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients32.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients33Tapped(_ sender: Any) {if ingredientSelected33==false{ ingredientSelected33=true
        ingredients33.tintColor = .systemGray
        queryList.append(ingredients33.titleLabel!.text ?? "")}else{ingredientSelected33=false
            ingredients33.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients33.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients34Tapped(_ sender: Any) {if ingredientSelected34==false{ ingredientSelected34=true
        ingredients34.tintColor = .systemGray
        queryList.append(ingredients34.titleLabel!.text ?? "")}else{ingredientSelected34=false
            ingredients34.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients34.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients35Tapped(_ sender: Any) {if ingredientSelected35==false{ ingredientSelected35=true
        ingredients35.tintColor = .systemGray
        queryList.append(ingredients35.titleLabel!.text ?? "")}else{ingredientSelected35=false
            ingredients35.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients35.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients36Tapped(_ sender: Any) {if ingredientSelected36==false{ ingredientSelected36=true
        ingredients36.tintColor = .systemGray
        queryList.append(ingredients36.titleLabel!.text ?? "")}else{ingredientSelected36=false
            ingredients36.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients36.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients37Tapped(_ sender: Any) {if ingredientSelected37==false{ ingredientSelected37=true
        ingredients37.tintColor = .systemGray
        queryList.append(ingredients37.titleLabel!.text ?? "")}else{ingredientSelected37=false
            ingredients37.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients37.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients38Tapped(_ sender: Any) {if ingredientSelected38==false{ ingredientSelected38=true
        ingredients38.tintColor = .systemGray
        queryList.append(ingredients38.titleLabel!.text ?? "")}else{ingredientSelected38=false
            ingredients38.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients38.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients39Tapped(_ sender: Any) {if ingredientSelected39==false{ ingredientSelected39=true
        ingredients39.tintColor = .systemGray
        queryList.append(ingredients39.titleLabel!.text ?? "")}else{ingredientSelected39=false
            ingredients39.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients39.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients40Tapped(_ sender: Any) {if ingredientSelected40==false{ ingredientSelected40=true
        ingredients40.tintColor = .systemGray
        queryList.append(ingredients40.titleLabel!.text ?? "")}else{ingredientSelected40=false
            ingredients40.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients40.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients41Tapped(_ sender: Any) {if ingredientSelected41==false{ ingredientSelected41=true
        ingredients41.tintColor = .systemGray
        queryList.append(ingredients41.titleLabel!.text ?? "")}else{ingredientSelected41=false
            ingredients41.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients41.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients42Tapped(_ sender: Any) {if ingredientSelected42==false{ ingredientSelected42=true
        ingredients42.tintColor = .systemGray
        queryList.append(ingredients42.titleLabel!.text ?? "")}else{ingredientSelected42=false
            ingredients42.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients42.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients43Tapped(_ sender: Any) {if ingredientSelected43==false{ ingredientSelected43=true
        ingredients43.tintColor = .systemGray
        queryList.append(ingredients43.titleLabel!.text ?? "")}else{ingredientSelected43=false
            ingredients43.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients43.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients44Tapped(_ sender: Any) {if ingredientSelected44==false{ ingredientSelected44=true
        ingredients44.tintColor = .systemGray
        queryList.append(ingredients44.titleLabel!.text ?? "")}else{ingredientSelected44=false
            ingredients44.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients44.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients45Tapped(_ sender: Any) {if ingredientSelected45==false{ ingredientSelected45=true
        ingredients45.tintColor = .systemGray
        queryList.append(ingredients45.titleLabel!.text ?? "")}else{ingredientSelected45=false
            ingredients45.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients45.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients46Tapped(_ sender: Any) {if ingredientSelected46==false{ ingredientSelected46=true
        ingredients46.tintColor = .systemGray
        queryList.append(ingredients46.titleLabel!.text ?? "")}else{ingredientSelected46=false
            ingredients46.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients46.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients47Tapped(_ sender: Any) {if ingredientSelected47==false{ ingredientSelected47=true
        ingredients47.tintColor = .systemGray
        queryList.append(ingredients47.titleLabel!.text ?? "")}else{ingredientSelected47=false
            ingredients47.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients47.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients48Tapped(_ sender: Any) {if ingredientSelected48==false{ ingredientSelected48=true
        ingredients48.tintColor = .systemGray
        queryList.append(ingredients48.titleLabel!.text ?? "")}else{ingredientSelected48=false
            ingredients48.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients48.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients49Tapped(_ sender: Any) {if ingredientSelected49==false{ ingredientSelected49=true
        ingredients49.tintColor = .systemGray
        queryList.append(ingredients49.titleLabel!.text ?? "")}else{ingredientSelected49=false
            ingredients49.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients49.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients50Tapped(_ sender: Any) {if ingredientSelected50==false{ ingredientSelected50=true
        ingredients50.tintColor = .systemGray
        queryList.append(ingredients50.titleLabel!.text ?? "")}else{ingredientSelected50=false
            ingredients50.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients50.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients51Tapped(_ sender: Any) {if ingredientSelected51==false{ ingredientSelected51=true
        ingredients51.tintColor = .systemGray
        queryList.append(ingredients51.titleLabel!.text ?? "")}else{ingredientSelected51=false
            ingredients51.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients51.titleLabel!.text ?? "")} ) } }
    @IBAction func ingredients52Tapped(_ sender: Any) {if ingredientSelected52==false{ ingredientSelected52=true
        ingredients52.tintColor = .systemGray
        queryList.append(ingredients52.titleLabel!.text ?? "")}else{ingredientSelected52=false
            ingredients52.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients52.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients53Tapped(_ sender: Any) {if ingredientSelected53==false{ ingredientSelected53=true
        ingredients53.tintColor = .systemGray
        queryList.append(ingredients53.titleLabel!.text ?? "")}else{ingredientSelected53=false
            ingredients53.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients53.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients54Tapped(_ sender: Any) {if ingredientSelected54==false{ ingredientSelected54=true
        ingredients54.tintColor = .systemGray
        queryList.append(ingredients54.titleLabel!.text ?? "")}else{ingredientSelected54=false
            ingredients54.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients54.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients55Tapped(_ sender: Any) {if ingredientSelected55==false{ ingredientSelected55=true
        ingredients55.tintColor = .systemGray
        queryList.append(ingredients55.titleLabel!.text ?? "")}else{ingredientSelected55=false
            ingredients55.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients55.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients56Tapped(_ sender: Any) {if ingredientSelected56==false{ ingredientSelected56=true
        ingredients56.tintColor = .systemGray
        queryList.append(ingredients56.titleLabel!.text ?? "")}else{ingredientSelected56=false
            ingredients56.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients56.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients57Tapped(_ sender: Any) {if ingredientSelected57==false{ ingredientSelected57=true
        ingredients57.tintColor = .systemGray
        queryList.append(ingredients57.titleLabel!.text ?? "")}else{ingredientSelected57=false
            ingredients57.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients57.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients58Tapped(_ sender: Any) {if ingredientSelected58==false{ ingredientSelected58=true
        ingredients58.tintColor = .systemGray
        queryList.append(ingredients58.titleLabel!.text ?? "")}else{ingredientSelected58=false
            ingredients58.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients58.titleLabel!.text ?? "")} ) } }
    
    @IBAction func ingredients59Tapped(_ sender: Any) {if ingredientSelected59==false{ ingredientSelected59=true
        ingredients59.tintColor = .systemGray
        queryList.append(ingredients59.titleLabel!.text ?? "")}else{ingredientSelected59=false
            ingredients59.tintColor = .systemBlue
            queryList.removeAll(where: {$0.contains(ingredients59.titleLabel!.text ?? "")} ) } }
    
  
    
//    @IBAction func ingredients2Tapped(_ sender: Any) {
//        ingredients2.tintColor = .systemGray
//       }
//    @IBAction func ingredients3Tapped(_ sender: Any) {
//        ingredients3.tintColor = .systemGray
//       }
//    @IBAction func ingredients4Tapped(_ sender: Any) {
//        ingredients4.tintColor = .systemGray
//      }
    
   
        
//
    
    
   
    
    
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
        struct URLs: Decodable{
            let url1:String
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

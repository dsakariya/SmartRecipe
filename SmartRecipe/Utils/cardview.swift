//
//  cardview.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-10-31.
//


import Foundation
import UIKit

@IBDesignable class cardView:UIView{
    @IBInspectable var cornerRadius:CGFloat=5
    var ofsetWidth:CGFloat=5
    var ofsetHeight:CGFloat=5
    
    var ofsetShadowOpacity:Float=5
    @IBInspectable var mycolor:UIColor=UIColor.systemGray4
    
    
    
    
    override func layoutSubviews() {
        layer.cornerRadius=self.cornerRadius
        layer.shadowColor=self.mycolor.cgColor
        layer.shadowOffset=CGSize(width: self.ofsetWidth, height: self.ofsetHeight)
        layer.shadowPath=UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerRadius).cgPath
        
        layer.shadowOpacity=self.ofsetShadowOpacity
         
    }
}

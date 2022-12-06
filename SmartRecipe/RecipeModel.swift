//
//  RecipeModel.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-12-05.
//

class RecipeModel{
    var id:String?
    var link:String?
    var recipeImage:String?
    var recipeName:String?
    
    init(id: String?, link: String?, recipeImage: String?, recipeName: String?) {
        self.id = id
        self.link = link
        self.recipeImage = recipeImage
        self.recipeName = recipeName
    }
}

//
//  TableViewCell.swift
//  SmartRecipe
//
//  Created by Dishant Sakariya on 2022-12-05.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var Rname: UILabel!
    
    @IBOutlet weak var Rimage: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

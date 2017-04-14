//
//  CustomTableViewCell.swift
//  favorite-movies-app
//
//  Created by Can A. MOGOL on 13/04/2017.
//  Copyright © 2017 fererlab. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var movieImageView:UIImageView!
    @IBOutlet var movieTitle:UILabel!
    @IBOutlet var movieYear:UILabel!
    @IBOutlet var favButton:UIButton!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

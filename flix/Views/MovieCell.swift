//
//  MovieCell.swift
//  flix
//
//  Created by Biswash Adhikari on 1/25/18.
//  Copyright © 2018 Biswash Adhikari. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    override func awakeFromNib() {
        
        
        
        super.awakeFromNib()
        // Initialization code
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

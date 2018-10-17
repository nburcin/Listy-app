//
//  ParallaxCell.swift
//  Listy-App
//
//  Created by Nicholas Burcin on 10/16/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {


    @IBOutlet weak var itemImageLabel1: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // setup parallax code later
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        
        itemImageLabel1.image = image
        descriptionLabel.text = desc
    }
    
    
    func setupParallax() {
        
    }
}

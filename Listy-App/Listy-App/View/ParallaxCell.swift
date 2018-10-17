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
        setupParallax()
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
        
        itemImageLabel1.image = image
        descriptionLabel.text = desc
    }
    
    
    func setupParallax() {
        let min = CGFloat(-50)
        let max = CGFloat(50)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer,transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageLabel1.addMotionEffect(motionEffectGroup)
        
    }
}

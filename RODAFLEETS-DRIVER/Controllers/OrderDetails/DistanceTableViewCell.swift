//
//  DetailTableViewCell.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class DistanceTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePickup: UIImageView!
    @IBOutlet weak var imageDrop: UIImageView!
    @IBOutlet weak var btnNavigatePickup: UIButton!
    @IBOutlet weak var btnNavigateDrop: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        btnNavigatePickup.layer.cornerRadius = 15.0
        btnNavigatePickup.clipsToBounds = true
        
        btnNavigateDrop.layer.cornerRadius = 15.0
        btnNavigateDrop.clipsToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

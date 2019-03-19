//
//  TrackingTableViewCell.swift
//  RODAFLEETS-DRIVER
//
//  Created by Developer on 15/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class TrackingTableViewCell: UITableViewCell {

    @IBOutlet weak var btnReschedule: UIButton!
    @IBOutlet weak var btnConfirmDelivery: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnReschedule.layer.cornerRadius = 15.0
        btnReschedule.clipsToBounds = true
        
        btnConfirmDelivery.layer.cornerRadius = 15.0
        btnConfirmDelivery.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

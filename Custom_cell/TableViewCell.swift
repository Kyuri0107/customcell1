//
//  TableViewCell.swift
//  Custom_cell
//
//  Created by COE-009 on 25/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblemailid: UILabel!
    @IBOutlet weak var lblmobile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

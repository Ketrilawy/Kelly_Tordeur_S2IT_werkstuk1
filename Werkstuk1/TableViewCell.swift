//
//  TableViewCell.swift
//  Werkstuk1
//
//  Created by student on 07/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var foto: UIImageView!
    @IBOutlet var naam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

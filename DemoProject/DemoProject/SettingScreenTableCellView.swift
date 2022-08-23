//
//  SettingScreenTableCellView.swift
//  DemoProject
//
//  Created by Calibraint on 25/04/22.
//

import UIKit

class SettingScreenTableCellView: UITableViewCell {

    @IBOutlet weak var avatarImg: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

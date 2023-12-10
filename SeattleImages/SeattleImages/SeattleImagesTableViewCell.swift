//
//  SeattleImagesTableViewCell.swift
//  SeattleImages
//
//  Created by Youying Qing on 12/9/23.
//

import UIKit

class SeattleImagesTableViewCell: UITableViewCell {
    @IBOutlet weak var lblSeattle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

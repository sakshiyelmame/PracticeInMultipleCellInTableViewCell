//
//  FirstTableViewCell.swift
//  PracticeInMultipleCellInTableViewCell
//
//  Created by Sakshi Yelmame on 29/03/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    static let identifire = "FirstTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "FirstTableViewCell", bundle: nil)
    }
    @IBOutlet weak var nameUILabel: UILabel!
    func configure(names: String) {
        nameUILabel.text = names
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

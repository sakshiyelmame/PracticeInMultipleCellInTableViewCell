//
//  SecondTableViewCell.swift
//  PracticeInMultipleCellInTableViewCell
//
//  Created by Sakshi Yelmame on 29/03/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    static let identifire = "SecondTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "SecondTableViewCell", bundle: nil)
    }

    @IBOutlet weak var imageUIImageView: UIImageView!
    func configure(images: String) {
        imageUIImageView.image = UIImage(named: images)
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

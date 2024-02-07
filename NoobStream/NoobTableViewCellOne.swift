//
//  NoobTableViewCellOne.swift
//  NoobStream
//
//  Created by Moh. Absar Rahman on 30/1/24.
//

import UIKit

class NoobTableViewCellOne: UITableViewCell {
    
    @IBOutlet weak var upLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    static let identifier = "NoobTableViewCellOne"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        upLabel.text = "YoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYoooYooo"
        
        secondLabel.text = "Yes"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

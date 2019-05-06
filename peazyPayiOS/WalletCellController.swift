//
//  WalletCellController.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 5/5/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit

class WalletCellController: UITableViewCell {
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

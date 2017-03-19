//
//  HomeTableViewCell.swift
//  Parsetagram
//
//  Created by Kenan Dominic on 3/16/17.
//  Copyright © 2017 Kenan Dominic. All rights reserved.
//

import UIKit
import ParseUI
import Parse

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var instagramPost: PFObject! {
        didSet {
            self.photoView.file = instagramPost["media"] as? PFFile
            self.photoView.loadInBackground()
            self.captionLabel.text =  instagramPost["caption"] as? String
        }
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

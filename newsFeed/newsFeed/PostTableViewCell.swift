//
//  PostTableViewCell.swift
//  newsFeed
//
//  Created by Diamonique Danner on 5/1/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var postTextLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(post: Post) {
        usernameLabel.text = post.author
        postTextLabel.text = post.text
        
    }
    
}

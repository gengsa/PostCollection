//
//  PostTableViewCell.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/6.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var post: Post? {
        didSet {
            configureCell()
        }
    }
    
    private func configureCell() {
        avatarImageView.image = post?.avatarImage
        titleLabel.text = post?.title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

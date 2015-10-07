//
//  Post.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/6.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

class Post {
    var avatarImage:UIImage! = nil
    var content: String! = nil
    
    init() {
    }
    init(avatarImage: UIImage, content: String) {
        self.avatarImage = avatarImage
        self.content = content
    }
    init(avatarImageName: String, content: String) {
        self.avatarImage = UIImage(named: avatarImageName)
        self.content = content
    }
}
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
    var title: String! = nil
    var poster: String! = nil
    var postTime: String! = nil
    
    init() {
    }
    init(avatarImage: UIImage, content: String, title: String, poster: String, postTime: String) {
        self.avatarImage = avatarImage
        self.content = content
        self.title = title
        self.poster = poster
        self.postTime = postTime
    }
    init(avatarImageName: String, content: String, title: String, poster: String, postTime: String) {
        self.avatarImage = UIImage(named: avatarImageName)
        self.content = content
        self.title = title
        self.poster = poster
        self.postTime = postTime
    }
}
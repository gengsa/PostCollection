//
//  PostViewController.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/8.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    var tmpPost: Post?
    var post: Post? {
        didSet {
            configureView()
        }
    }
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var posterLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var postTimeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        post = tmpPost
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func configureView() {
        avatarImageView.image = post?.avatarImage
        posterLabel.text = post?.poster
        titleLabel.text = post?.title
        postTimeLabel.text = post?.postTime
        contentLabel.text = post?.content
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

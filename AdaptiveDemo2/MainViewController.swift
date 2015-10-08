//
//  MainViewController.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/8.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

protocol PostCollectionContainer {
    var post: Post? {
        get set
    }
}

class MainViewController: UIViewController, PostCollectionContainer {

    var post: Post? {
        didSet {
            for vc in childViewControllers {
                if let postVc = vc as? PostViewController {
                    postVc.post = post
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main View Controller"
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func configureContainter(container:PostCollectionContainer?){
        for vc in childViewControllers{
            if let postListVC = vc as? PostListViewController{
                postListVC.container=container
            }
        }
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        if traitCollection.verticalSizeClass == UIUserInterfaceSizeClass.Compact {
            configureContainter(self)
        } else {
            configureContainter(nil)
        }
    }

}

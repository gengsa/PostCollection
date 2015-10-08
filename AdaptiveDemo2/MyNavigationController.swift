//
//  MyNavigationController.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/8.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // for ipad landscape, change trait to .Compact
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        var traitOverride: UITraitCollection?
        if traitCollection.userInterfaceIdiom == UIUserInterfaceIdiom.Pad && size.height < 1000 {
            traitOverride = UITraitCollection(verticalSizeClass: .Compact)
        }
        for vc in childViewControllers as [UIViewController] {
            setOverrideTraitCollection(traitOverride, forChildViewController: vc)
        }
        
    }
    
    // for support all orientations(include upside down)
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }

}

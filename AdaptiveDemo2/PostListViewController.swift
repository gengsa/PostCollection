//
//  ViewController.swift
//  AdaptiveDemo2
//
//  Created by 王钊 on 15/10/6.
//  Copyright © 2015年 王钊. All rights reserved.
//

import UIKit

class PostListViewController: UITableViewController {
    
    var posts: [Post] = [
        Post(avatarImageName: "Contact", content: "属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新的值和现在的值相同的时候也不例外。\n可以为除了延迟存储属性之外的其他存储属性添加属性观察器，也可以通过重载属性的方式为继承的属性（包括存储属性和计算属性）添加属性观察器。", title: "构造过程（Initialization)", poster: "lifedim2", postTime: "2014-06-25 17:34:08"),
        Post(avatarImageName: "Contact", content: "构造器代理的实现规则和形式", title: "默认构造器", poster: "lifedim", postTime: "2014-06-25 17:34:07")
    ]
    
    var container: PostCollectionContainer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        //去掉cell太少没有占满屏幕时会显示多余的分隔线的问题
        tableView.tableFooterView = UIView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // from UITableViewDatasource
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as! PostTableViewCell
        cell.post = posts[indexPath.row]
        return cell
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    
    // from UITableViewDelegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if container == nil {
            performSegueWithIdentifier("toPostViewController", sender: indexPath)
        } else {
            container.post = posts[indexPath.row]
        }
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
        if segue.identifier == "toPostViewController" {
            if let indexPath = sender as? NSIndexPath {
                let dest = segue.destinationViewController as! PostViewController
                dest.tmpPost = posts[indexPath.row]
            }
        }
    }


}


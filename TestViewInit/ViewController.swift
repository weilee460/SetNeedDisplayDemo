//
//  ViewController.swift
//  TestViewInit
//
//  Created by ying on 16/1/29.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testInitView: UIView!
    
    var testViewBackgroundColor = UIColor.yellowColor()
    var isValued = true
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        //testViewBackgroundColor = UIColor.yellowColor()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("init nibName")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        //testViewBackgroundColor = UIColor.yellowColor()
        super.init(coder: aDecoder)
        print("init coder")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testInitView.backgroundColor = testViewBackgroundColor
        testInitView.tag = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClick(sender: UIButton) {
        if isValued == true
        {
            testViewBackgroundColor = UIColor.blueColor()
            isValued = false
        }
        else
        {
            testViewBackgroundColor = UIColor.yellowColor()
            isValued = true
        }
        testInitView.backgroundColor = testViewBackgroundColor
        
        testInitView.setNeedsDisplay()
    
    }
    

    @IBAction func onClickSearch(sender: UIButton) {
        
        let viewForFind = self.view.viewWithTag(10)
        viewForFind?.backgroundColor = UIColor.greenColor()

    }
    

}


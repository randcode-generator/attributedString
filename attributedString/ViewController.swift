//
//  ViewController.swift
//  attributedString
//
//  Created by Eric on 4/8/15.
//  Copyright (c) 2015 Eric. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var mainString: NSMutableAttributedString = NSMutableAttributedString();
        
        var str1: NSMutableAttributedString = NSMutableAttributedString(string: "My Car! ");
        str1.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSMakeRange(0, 2));
        var fonts: UIFont? = UIFont(name: "Verdana", size: 40);
        str1.addAttribute(NSFontAttributeName, value: fonts!, range: NSMakeRange(3, 3));
        
        var textAttachment: NSTextAttachment = NSTextAttachment();
        textAttachment.image = UIImage(named: "car");
        var rects: CGRect = textAttachment.bounds;
        rects.size.height = 33;
        rects.size.width = 100;
        var img1: NSAttributedString = NSAttributedString(attachment: textAttachment);
        
        mainString.appendAttributedString(str1)
        mainString.appendAttributedString(img1)
        
        label1.attributedText = mainString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  zoopedia
//
//  Created by Yazhong Luo on 16/4/12.
//  Copyright © 2016年 Yazhong Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var YearofBirth: UITextField!
    @IBOutlet weak var Image: UIImageView!

    
    let offset = 4

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
    

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        YearofBirth.resignFirstResponder()
}

    @IBAction func TaptoAnswer(sender: AnyObject) {
    YearofBirth.resignFirstResponder()
    
    if let year = Int(YearofBirth.text!) { //text to int use int()
    let imageNumber = (year - offset ) % 12       //year to image
    Image.image = UIImage(named: String (imageNumber))
    }
    else {
    //notify user
    }
    
}
}


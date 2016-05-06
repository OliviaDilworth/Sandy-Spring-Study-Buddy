//
//  Schedule.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/5/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class Schedule: UIViewController, UITextViewDelegate {
    
    @IBOutlet var class1: UITextField!

    @IBOutlet var class2: UITextField!

    @IBOutlet var class3: UITextField!
    
    @IBOutlet var class4: UITextField!
    
    @IBOutlet var class5: UITextField!
    
    @IBOutlet var class6: UITextField!
    
    @IBOutlet var class7: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveClasses(sender: AnyObject) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

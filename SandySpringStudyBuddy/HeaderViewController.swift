//
//  HeaderViewController.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/6/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class HeaderViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!

    @IBOutlet var gradeTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    var tutor = Tutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tutor.name = nameTextField.text!
        tutor.grade = gradeTextField.text!
        tutor.email = emailTextField.text!
        if segue.identifier == "saveHeader" {
            if let destination = segue.destinationViewController as? Subjects {
                destination.tutor = self.tutor
            }
        }
    }


}

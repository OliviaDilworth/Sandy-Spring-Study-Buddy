//
//  HeaderViewController.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/6/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class HeaderViewController: UIViewController {

    //Outlets to textfields on storyboard
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var gradeTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    //Creating tutor variable that calls the Tutor class
    var tutor = Tutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Method to send information to next view controller via the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //variables in Tutor class (called by tutor variable) = name, grade, and email text in this class
        tutor.name = nameTextField.text!
        tutor.grade = gradeTextField.text!
        tutor.email = emailTextField.text!
        
        //Sending information to Tutor class by calling and then using the segue, passing the information on to the next ViewController
        if segue.identifier == "saveHeader" {
            //Setting destination for information as Tutor class
            if let destination = segue.destinationViewController as? Subjects {
                destination.tutor = self.tutor
            }
        }
    }


}

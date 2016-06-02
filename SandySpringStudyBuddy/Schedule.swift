//
//  Schedule.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/5/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class Schedule: UIViewController, UITextViewDelegate {
    
    //Outlets to Schedule ViewController
    @IBOutlet var classA: UITextField!
    @IBOutlet var classB: UITextField!
    @IBOutlet var classC: UITextField!
    @IBOutlet var classD: UITextField!
    @IBOutlet var classE: UITextField!
    @IBOutlet var classF: UITextField!
    @IBOutlet var classG: UITextField!
    
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
        
        //variables in Tutor class (called by tutor variable) = schedule text in this class
        tutor.class1 = classA.text!
        tutor.class2 = classB.text!
        tutor.class3 = classC.text!
        tutor.class4 = classD.text!
        tutor.class5 = classE.text!
        tutor.class6 = classF.text!
        tutor.class7 = classG.text!
        
        //Sending information to Tutor class by calling and then using the segue, passing the information on to the next ViewController
        if segue.identifier == "saveSchedule" {
            //Setting destination for information as Tutor class
            if let destination = segue.destinationViewController as? profilePicture {
                destination.tutor = self.tutor
            }
        }
    }

    
    
}

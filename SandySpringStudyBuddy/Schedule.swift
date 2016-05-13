//
//  Schedule.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/5/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class Schedule: UIViewController, UITextViewDelegate {
    
    @IBOutlet var classA: UITextField!
    @IBOutlet var classB: UITextField!
    @IBOutlet var classC: UITextField!
    @IBOutlet var classD: UITextField!
    @IBOutlet var classE: UITextField!
    @IBOutlet var classF: UITextField!
    @IBOutlet var classG: UITextField!
    
    var tutor = Tutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tutor.subject)
    }
    
    @IBAction func saveClasses(sender: AnyObject) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tutor.class1 = classA.text!
        tutor.class2 = classB.text!
        tutor.class3 = classC.text!
        tutor.class4 = classD.text!
        tutor.class5 = classE.text!
        tutor.class6 = classF.text!
        tutor.class7 = classG.text!
        
        if segue.identifier == "saveSchedule" {
            if let destination = segue.destinationViewController as? profilePicture {
                destination.tutor = self.tutor
            }
        }
    }

    
    
}

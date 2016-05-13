//
//  Subjects.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 4/27/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class Subjects: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var subjects: UIPickerView!

    var pickerData: [String] = [String]()
    
    var tutor = Tutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Establishing data sources
        self.subjects.delegate = self
        self.subjects.dataSource = self
        
        //Setting subjects as data
        pickerData = ["Art", "English", "French", "History", "Math", "Spanish", "Science"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Number of columns
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Number of rows
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //Putting data into picker
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tutor.subject = pickerData[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "saveSubject" {
            if let destination = segue.destinationViewController as? Schedule {
                destination.tutor = self.tutor
            }
        }
    }

}

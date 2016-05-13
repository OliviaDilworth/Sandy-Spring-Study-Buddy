//
//  Profile.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 4/28/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    //Header Labels
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var gradeLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    //Profile Picture
    @IBOutlet var profilePictureView: UIImageView!
    
    //Best Subject Label
    @IBOutlet var subjectLabel: UILabel!
    
    //Schedule Labels
    @IBOutlet var classOneLabel: UILabel!
    @IBOutlet var classTwoLabel: UILabel!
    @IBOutlet var classThreeLabel: UILabel!
    @IBOutlet var classFourLabel: UILabel!
    @IBOutlet var classFiveLabel: UILabel!
    @IBOutlet var classSixLabel: UILabel!
    @IBOutlet var classSevenLabel: UILabel!
    
    var tutor = Tutor()
    var header = HeaderViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = tutor.name
        self.gradeLabel.text = "Grade \(tutor.grade)"
        self.emailLabel.text = tutor.email
        
        self.profilePictureView.image = tutor.proPic
        
        self.subjectLabel.text = "Best Subject: \(tutor.subject)"
        
        self.classOneLabel.text = "A: \(tutor.class1)"
        self.classTwoLabel.text = "B: \(tutor.class2)"
        self.classThreeLabel.text = "C: \(tutor.class3)"
        self.classFourLabel.text = "D: \(tutor.class4)"
        self.classFiveLabel.text = "E: \(tutor.class5)"
        self.classSixLabel.text = "F: \(tutor.class6)"
        self.classSevenLabel.text = "G: \(tutor.class7)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}


//
//  LogIn.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/18/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class LogIn: UIViewController {
    
    //Uncomment when bringing BaasBox into the project
    //let client = BAAClient.sharedClient()
    
    //Security backups
    required init?(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    //Outlets to login storyboard
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    
    //Method to work the login button
    @IBAction func loginTapped(sender: AnyObject) {
        loginButton.enabled = false
        
        //This is incomplete, code to authenticate user, uncomment when ready to implement login
        //Authenticating the user
        //client.authenticateUser(usernameField.text, password: passwordField.text, completion: { (success: Bool, error: NSError!) -> ()
            //in
            //self.loginButton.enabled = true
            
            //Code to move to the main storyboard if user is logged in
            //if success {
                //self.dismissViewControllerAnimated(true, completion: nil)
            //} else {
                //self.errorLabel.text = error.localizedDescription
            //}
        //})
    }
    
    //View did load method, including username and password placeholders
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameField.placeholder = "username"
        passwordField.placeholder = "password"
        errorLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

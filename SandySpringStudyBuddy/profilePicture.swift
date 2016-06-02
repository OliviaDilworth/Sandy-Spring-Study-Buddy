//
//  profilePicture.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/4/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class profilePicture: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //Outlet connection to profile picture image
    @IBOutlet var profilePicture: UIImageView!
    
    //Creating variable for image picker
    let imagePicker = UIImagePickerController()
    
    //Creating tutor variable that calls the Tutor class
    var tutor = Tutor()
    
    //Outlet connection to choose image button
    @IBAction func chooseImage(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    //Code to run picker controller
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            //Designating image in this ViewController as the picked image
            profilePicture.image = pickedImage
            
            //Designating propic variable in Tutor class as the picked image
            tutor.proPic = pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //Method for cancelling the image picker
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    //Method to send information to next view controller via the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        //Sending information to Tutor class by calling and then using the segue, passing the information on to the next ViewController
        if segue.identifier == "savePicture" {
            //Setting destination for information as Tutor class
            if let destination = segue.destinationViewController as? Profile {
                destination.tutor = self.tutor
            }
        }
    }

}

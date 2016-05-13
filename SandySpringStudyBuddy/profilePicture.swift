//
//  profilePicture.swift
//  SandySpringStudyBuddy
//
//  Created by Olivia Dilworth on 5/4/16.
//  Copyright © 2016 SSFS. All rights reserved.
//

import UIKit

class profilePicture: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var profilePicture: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    var tutor = Tutor()
    
    @IBAction func chooseImage(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profilePicture.contentMode = .ScaleAspectFit
            profilePicture.image = pickedImage
            profilePicture.image = tutor.proPic
        
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "savePicture" {
            if let destination = segue.destinationViewController as? Profile {
                destination.tutor = self.tutor
            }
        }
    }

}

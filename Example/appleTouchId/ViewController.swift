//
//  ViewController.swift
//  appleTouchId
//
//  Created by SumitJain on 08/28/2017.
//  Copyright (c) 2017 SumitJain. All rights reserved.
//

import UIKit
import appleTouchId
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func authenticate(_ sender: Any) {
        AppleAuthenticator.sharedInstance.authenticateWithSuccess({ [unowned self](Void) in
            self.presentAlertControllerWithMessage("Successfully Authenticated!")
        }) { (errorCode) in
            var authErrorString : NSString
            switch (errorCode) {
            case LAError.systemCancel.rawValue:
                authErrorString = "System canceled auth request due to app coming to foreground or background.";
                break;
            case LAError.authenticationFailed.rawValue:
                authErrorString = "User failed after a few attempts.";
                break;
            case LAError.userCancel.rawValue:
                authErrorString = "User cancelled.";
                break;
                
            case LAError.userFallback.rawValue:
                authErrorString = "Fallback auth method should be implemented here.";
                break;
            case LAError.touchIDNotEnrolled.rawValue:
                authErrorString = "No Touch ID fingers enrolled.";
                break;
            case LAError.touchIDNotAvailable.rawValue:
                authErrorString = "Touch ID not available on your device.";
                break;
            case LAError.passcodeNotSet.rawValue:
                authErrorString = "Need a passcode set to use Touch ID.";
                break;
            default:
                authErrorString = "Check your Touch ID Settings.";
                break;
            }
            self.presentAlertControllerWithMessage(authErrorString)
        }
    }
   
    func presentAlertControllerWithMessage(_ message : NSString) {
        let alertController = UIAlertController(title:"Touch ID", message:message as String, preferredStyle:.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
}


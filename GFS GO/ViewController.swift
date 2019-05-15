//
//  ViewController.swift
//  GFS GO
//
//  Created by studente on 3/5/19.
//  Copyright © 2019 MadLads. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTapSignout(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
        print("signed out")
    }
    
    
    /* func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
                withError error: NSError!) {
        if (error == nil) {
            // Perform any operations on signed in user here.
            print("bro")
            performSegue(withIdentifier: "SignInToA", sender: self)
        } else {
            print("brosephine")
            print("\(error.localizedDescription)")
        }
    } */


}


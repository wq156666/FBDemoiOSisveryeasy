//
//  LoginViewController.swift
//  FBDemoiOSisveryeasy
//
//  Created by user on 2019/11/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction func login(_ sender: Any) {
          let manager = LoginManager()
          manager.logIn(permissions: [.publicProfile], viewController: self) { (result) in
              if case LoginResult.success(granted: _, declined: _, token: _) = result {
                  print("login ok")
              } else {
                  print("login fail")
              }
          }
          
      }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

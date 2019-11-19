//
//  ViewController.swift
//  FBDemoiOSisveryeasy
//
//  Created by user on 2019/11/19.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit
import FacebookCore
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = AccessToken.current {
            Profile.loadCurrentProfile { (profile, error) in
                if let profile = profile {
                    self.label.text = profile.name
                    let url = profile.imageURL(forMode: .square, size: CGSize(width: 300, height: 300))
                    self.image.kf.setImage(with: url)
                      
                }
            }
        }
       
    }


}


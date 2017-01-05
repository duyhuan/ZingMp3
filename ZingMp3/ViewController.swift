//
//  ViewController.swift
//  ZingMp3
//
//  Created by techmaster on 1/5/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgLogo.alpha = 0
        lblText.alpha = 0
        lblName.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: { 
            self.imgLogo.alpha = 1
            }) { (false) in
                UIView.animate(withDuration: 4, animations: { 
                    self.lblText.alpha = 1
                    self.lblText.center = CGPoint(x: self.imgLogo.center.x, y: 100)
                    }, completion: { (false) in
                        UIView.animate(withDuration: 4, animations: { 
                            self.lblName.alpha = 1
                            self.lblName.center = CGPoint(x: self.imgLogo.center.x, y: UIScreen.main.bounds.height - 100)
                        })
                })
        }
    }

}


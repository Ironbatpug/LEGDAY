//
//  ViewController.swift
//  LEGDAY
//
//  Created by Molnár Csaba on 2019. 09. 12..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class WorkOutVC: UIViewController {
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var timerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeLbl.isHidden = true
        timerLbl.isHidden = true
    }

}


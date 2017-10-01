//
//  CreateGoalVC.swift
//  CoreDataApp
//
//  Created by Ljubomir on 10/1/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismisDetail()
    }
    
}

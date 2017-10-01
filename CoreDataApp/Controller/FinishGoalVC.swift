//
//  FinishGoalVC.swift
//  CoreDataApp
//
//  Created by Ljubomir on 10/1/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextFields: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData (description: String, type: GoalType) {
        
        self.goalDescription = description
        self.goalType = type
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextFields.delegate = self
        
        
    }
    
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
    }
    
   

}

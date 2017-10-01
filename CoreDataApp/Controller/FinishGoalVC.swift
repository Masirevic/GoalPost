//
//  FinishGoalVC.swift
//  CoreDataApp
//
//  Created by Ljubomir on 10/1/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit
import CoreData

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
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismisDetail()
    }
    
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextFields.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
         }
        
    }
        
}
    
    func save (completion: (_ finished: Bool)-> ()) {
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextFields.text!)!
        goal.goalProgress = Int32(0)
        
      
        
        do {
            try  managedContext.save()
            completion(true)
        } catch {
        debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }

}
















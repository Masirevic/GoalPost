//
//  GoalsVC.swift
//  CoreDataApp
//
//  Created by Ljubomir on 10/1/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isHidden = false
       
        
        
    }
    
    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
    }
    
}



extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell ()
        }
        cell.configureCell(description: "Eat salad twice a week", type: GoalType.longTerm, goalProgressAmount: 2)
        return cell
    }
    
    
}


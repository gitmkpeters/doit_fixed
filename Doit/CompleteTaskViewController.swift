//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by David Groomes on 9/15/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLbl: UILabel!
    var previousVC = TaskViewController()
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Task name: \(task?.name)")
        
    //let task = Task(name: taskLbl.text!, important: true)
        if let task = task{
            taskLbl.text! = task.name
        }
        //if task.important {
        //    taskLbl.text! = "❗️\(task.name)"
        //     print("else")
        //} else {
            //taskLbl.text! = task.name
        //    print("else")
        //}
        
    }
    
//    @IBAction func completed(_ sender: AnyObject) {
//        previousVC.tasks.remove(at: previousVC.selectedIndex)
//        previousVC.tableView.reloadData()
//        navigationController!.popViewController(animated: true)
//        
//    }
    
}

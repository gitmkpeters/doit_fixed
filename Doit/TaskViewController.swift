//
//  TaskController.swift
//  Doit
//
//  Created by David Groomes on 9/13/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks = [Task]()
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = makeTask()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        let task = tasks[indexPath.row]
       performSegue(withIdentifier: "trailToSelected", sender: task)
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️ \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTask() -> [Task] {
        let task1 = Task(name: "Walk the dog", important: false)
    
        let task2 = Task(name: "Buy cheese", important: false)
        
        let task3 = Task(name: "Do Laundry", important: false)
        
        return [task1, task2, task3]
    }
    @IBAction func plusTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "trailToAdd", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "trailToAdd" {
            let nextVC = segue.destination as! CreateTaskViewController
            nextVC.previousVC = self
        }
        
        if segue.identifier == "trailToSelected" {
            let nextVC = segue.destination as! CompleteTaskViewController
            let indexPath = tableView.indexPathForSelectedRow
            let selectedTask = tasks[(indexPath?.row)!]
            nextVC.task = selectedTask
        }
    }
    
    
}


//
//  task.swift
//  Doit
//
//  Created by David Groomes on 9/13/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import Foundation

class Task {
    var name: String
    var important: Bool
    
    init(name: String, important: Bool) {
        self.name = name
        self.important = important
    }
}

//
//  TaskListViewModel.swift
//  BulletLike (iOS)
//
//  Created by Kevin ABRIOUX on 30/12/2021.
//

import Foundation
import SwiftUI

class TaskListViewModel: ObservableObject {
    
    @Published var taskList = [Task]()
    
    func addNewTask() {
        taskList.append(Task(id: UUID()))
    }
}

//
//  TaskListViewModelTests.swift
//  Tests iOS
//
//  Created by Kevin ABRIOUX on 30/12/2021.
//

import Foundation
import XCTest
@testable import BulletLike

class TaskListViewModelTests: XCTestCase {
    
    func testAddTask() {
        //With
        let viewModel = TaskListViewModel()
        
        XCTAssertTrue(viewModel.taskList.isEmpty)
        
        //When
        viewModel.addNewTask()
        
        //Then
        XCTAssertEqual(1, viewModel.taskList.count)
    }
    
}

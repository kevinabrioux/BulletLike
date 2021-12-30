//
//  ContentView.swift
//  Shared
//
//  Created by Kevin ABRIOUX on 28/12/2021.
//

import SwiftUI

struct TaskListView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @ObservedObject var viewModel: TaskListViewModel
    
    var body: some View {
        VStack {
            List(viewModel.taskList) { _ in
                TaskView()
            }
            Button(action: viewModel.addNewTask) {
                HStack {
                    Image("add_circle")
                        .renderingMode(.template)
                        .colorMultiply(colorScheme.color)
                    Text("New task")
                    Spacer()
                }
            }.colorMultiply(colorScheme.color).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            TaskListView(viewModel:TaskListViewModel())
                .preferredColorScheme($0)
        }
    }
}

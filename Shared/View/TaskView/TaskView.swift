//
//  TaskView.swift
//  BulletLike (iOS)
//
//  Created by Kevin ABRIOUX on 30/12/2021.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        HStack {
            Text("Task 1")
            Spacer()
            Rectangle()
                .fill(Color.clear)
                .frame(width: 25, height: 25)
                .clipShape(Capsule())
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color("TaskUncompleteColor"), lineWidth: 1)
                )
            
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            TaskView().preferredColorScheme($0)
        }
    }
}

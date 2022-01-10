//
//  Draft.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/09.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle,
            onCommit: {
                self.createTask()
                self.userData.isEditing = false
            }
        )
    }
    func createTask() {
        let newTask = Task(title: self.taskTitle, checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}

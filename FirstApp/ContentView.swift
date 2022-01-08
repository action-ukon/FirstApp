//
//  ContentView.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        self.userData.tasks[0].checked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                Text("+")
                    .font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

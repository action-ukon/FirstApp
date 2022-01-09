//
//  Draft.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/09.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle)
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}

//
//  UserData.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/07.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: false),
        Task(title: "筋トレ", checked: true)
    ]
    
    @Published var isEditing: Bool = false
}

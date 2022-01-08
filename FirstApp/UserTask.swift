//
//  UserTask.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/07.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool){
        self.title = title
        self.checked = checked
    }
}

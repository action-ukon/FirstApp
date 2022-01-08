//
//  ListRow.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/07.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    var body: some View {
        HStack {
            if isCheck {
                Text("〼")
            }else{
                Text("□")
            }
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理", isCheck: true)
    }
}

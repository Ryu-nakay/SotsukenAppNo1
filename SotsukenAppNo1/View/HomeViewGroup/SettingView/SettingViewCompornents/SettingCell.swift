//
//  SettingCell.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/24.
//

import SwiftUI

struct SettingCell: View {
    var view: AnyView

    init<V>(view: V) where V: View {
        self.view = AnyView(view)
    }

    var body: some View {
        view
            .frame(width: UIScreen.main.bounds.width)
            .background(.white)
            .border(.black.opacity(0.3), width: 0.5)
    }
}

struct SettingCell_Previews: PreviewProvider {
    static var previews: some View {
        SettingCell(view: Button(action: {

        }, label: {
            Text("Log out")
                .foregroundColor(.red)
        })
        )
    }
}

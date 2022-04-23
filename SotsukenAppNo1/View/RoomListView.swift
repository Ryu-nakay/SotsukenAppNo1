//
//  RoomListView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct RoomListView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("RoomList")

            ForEach(1..<6) { _ in
                RoomCell(roonName: "Room Name")
            }
        }
    }
}

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView()
    }
}

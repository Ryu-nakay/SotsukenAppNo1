//
//  RoomListView.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import SwiftUI

struct RoomListView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.gray)
                    .opacity(0.2)

                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(1..<6) { _ in
                            RoomCell(roonName: "Room Name")
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Rooms", displayMode: .inline)
            .navigationBarItems(
                trailing: Button(action: {

                }, label: {
                    Image(systemName: "plus")
                })
            )
        }
    }
}

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView()
    }
}

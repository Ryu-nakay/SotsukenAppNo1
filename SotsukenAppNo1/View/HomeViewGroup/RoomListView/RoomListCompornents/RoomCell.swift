//
//  RoomCell.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/23.
//

import SwiftUI

struct RoomCell: View {
    var roonName: String

    var body: some View {
        let width = UIScreen.main.bounds.width

        HStack(alignment: .center, spacing: 0) {
            ZStack {
                Circle()
                    .fill(.gray)
                    .frame(width: 40)
                Image("Ammonite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
            }
            .padding(.leading, 10)

            Spacer()
                .frame(width: 10)

            Text(roonName)
                .font(.title3)

            Spacer()

        }
        .frame(width: width, height: 46)
        .background(.white)
        .border(.black.opacity(0.4), width: 0.5)
    }
}

struct RoomCell_Previews: PreviewProvider {
    static var previews: some View {
        RoomCell(roonName: "Room Name")
            .previewLayout(.sizeThatFits)
    }
}

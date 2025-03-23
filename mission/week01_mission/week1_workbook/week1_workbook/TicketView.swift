//
//  ContentView.swift
//  week1_workbook
//
//  Created by 김창우 on 3/16/25.
//

import SwiftData
import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .center) {
                Image("background")
            }
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 385, height: 386)
              .background(Color(red: 0, green: 0, blue: 0).opacity(0.30))
            VStack {
                Spacer().frame(height: 51)
                Text("마이펫의 이중생활2")
                    .font(Font.custom("Pretendard", size: 30).weight(.bold))
                    .foregroundColor(.white)
                    .shadow(
                        color: Color(
                            red: 0.00, green: 0.00, blue: 0.00, opacity: 0.25),
                        radius: 4, x: 0, y: 4)

                Text("본인 + 동반 1인")
                    .font(Font.custom("Pretendard", size: 16).weight(.light))
                    .foregroundColor(.white)

                Text("30,100원")
                    .font(Font.custom("Pretendard", size: 24).weight(.bold))
                    .foregroundColor(.white)

                Spacer().frame(height: 178)

                Image(systemName: "chevron.up")
                    .foregroundColor(.white)
                    .opacity(0.40)
                Text("예매하기")
                    .font(Font.custom("Pretendard", size: 18).weight(.semibold))
                    .foregroundColor(.white)
                    .opacity(0.40)
                Spacer().frame(height: 33)
            }
        }
    }
}

#Preview {
    TicketView()
}

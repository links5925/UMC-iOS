//
//  AdView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/28/25.
//
import SwiftUI

struct AdView: View{
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        VStack{
            Image(.ad)
            
            Spacer().frame(height: 36)
            
            Button(action: {print("자세히 보기")}) {
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color.main)
                    .frame(width: UIScreen.main.bounds.size.width - 38, height: 45)
                    .cornerRadius(20)
                    .overlay(
                        Text("자세히 보기")
                            .font(Font.custom("Pretendard", size: 16).weight(.medium))
                            .foregroundColor(.white)
                    )
            }
            
            Spacer().frame(height: 19)
            
            Button(action: {dismiss()}){
                Text("X 닫기")
            }.frame(maxWidth: .infinity, alignment: .trailing).padding(.trailing, 39)
            Spacer().frame(height: 16)
        }
    }
}

#Preview {
    AdView()
}

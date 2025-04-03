//
//  HomeView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 4/3/25.
//

import SwiftUI
struct HomeView:View {
    var body: some View {
        ScrollView{
            TopView()
            MiddleView()
        }
    }
    
}


fileprivate struct TopView: View{
    var body: some View{
        ZStack(alignment:.leading){
            Image(.homePageTopBanner)
            VStack(alignment:.leading){
                Spacer().frame(height: 80)
                Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                    .font(Font.custom("Pretendard", size: 24))
                Spacer().frame(height: 9)
                HStack{
                    Button(action:{
                        print("내용 보기")
                    }){
                        Text("내용 보기")
                            .font(Font.custom("Pretendard", size: 13))
                            .foregroundColor(.black)
                    }
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                .padding(.trailing, 11)
                
                HStack() {
                    VStack(alignment: .leading){
                        Text("11★ until next Reward")
                            .foregroundColor(Color(.gold))
                            .font(Font.custom("Pretendard", size: 16)
                            .weight(.semibold)).frame(maxWidth: .infinity, alignment: .leading)
                        ProgressBar(width: 256, progress: 0.3)
                    }
                    
                    
                    Spacer()
                    
                    Text("1")
                        .font(Font.custom("Pretendard", size: 38)
                        .weight(.semibold))
                    
                    Text("/")
                        .font(Font.custom("Pretendard", size: 24).weight(.light))
                        .tracking(0.07)
                    
                    Text("12★")
                        .font(Font.custom("Pretendard", size: 24)
                        .weight(.semibold))
                        .foregroundColor(Color(.gold))
                    
                }.padding(.trailing, 41)
                
                
            }.padding(.leading, 28)
            
            
        }
    }
}


fileprivate struct MiddleView:View{
    @AppStorage("userId") private var userId: String?

    var body: some View{
        VStack{
            Image(.homePageBearBanner)
            Spacer().frame(height:20)
            HStack{
                Text(userId ?? "(설정 닉네임)")
                    .font(Font.custom("Pretendard", size: 24))
                    .foregroundColor(Color(.gold))
                Text("님을 위한 추천메뉴")
                    .font(Font.custom("Pretendard", size: 24))
            }
            .frame(maxWidth: .infinity, alignment: .leading) 
            .padding(.leading, 20)
            
            ScrollView(.vertical){
                
            }
        }
    }
}
#Preview {
    MainView()
}

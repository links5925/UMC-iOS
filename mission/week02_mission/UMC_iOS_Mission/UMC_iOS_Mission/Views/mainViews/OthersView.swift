//
//  OtherView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/29/25.
//

import SwiftUI

struct OthersView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            TopView()
            
            MiddleView()
            
        }
    }
    
    
    struct TopView: View {
        var body: some View {
            VStack {
                Spacer().frame(height: 28)
                
                HStack {
                    Text("Other")
                        .font(Font.custom("Pretendard", size: 24).weight(.bold))
                        .lineSpacing(36)
                        .foregroundColor(.black)
                    Spacer()
                    Button(action: {print("로그아웃")}) {
                        Image(.logout)
                    }
                }
                .padding(.leading, 30)
                .padding(.trailing, 24)
            }
        }
    }
    
    struct MiddleView: View {
        @AppStorage("userId") private var userId: String?
        var body: some View {
            VStack {
                
                Spacer().frame(height: 41)
                
                HStack(alignment: .center){
                    Text( userId ?? "(작성한 닉네임) ")
                        .font(Font.custom("Pretendard", size: 24).weight(.semibold))
                        .lineSpacing(36)
                        .foregroundColor(Color(.main))
                    Text("님") .font(Font.custom("Pretendard", size: 24).weight(.semibold))
                        .lineSpacing(36)
                }
                
                Text("환영합니다!")
                    .font(Font.custom("Pretendard", size: 24).weight(.semibold))
                    .lineSpacing(36)
                
                Spacer().frame(height: 24)
                
                HStack{
                    MiddleSquareButton(name: "별 히스토리", image: Image(.othersPageStar))
                    Spacer().frame(width: 11,height:1)
                    MiddleSquareButton(name: "전자영수증", image: Image(.othersPageRecipe))
                    Spacer().frame(width: 11,height:1)
                    MiddleSquareButton(name: "나만의 메뉴", image: Image(.othersPageMyMenu))
                }
                
                Spacer().frame(height: 41)
                
                VStack{
                    Text("Pay")
                        .font(Font.custom("Pretendard", size: 18).weight(.semibold))
                        .lineSpacing(28).frame(maxWidth: .infinity, alignment: .leading)
                   
                    Spacer().frame(height: 8)
                    
                    HStack{
                        MiddleCustomButton(image: Image(.othersPageCardRegister), name: "스타벅스 카드 등록",size: (UIScreen.main.bounds.width/2 - 18))
                        
                        MiddleCustomButton(image: Image(.othersPageCardChange), name: "카드 교환권 등록",size: (UIScreen.main.bounds.width/2 - 18))
                    }.padding(.trailing,16)
                    
                    HStack{
                        MiddleCustomButton(image: Image(.othersPageCouponRegister), name: "쿠폰 등록",size: (UIScreen.main.bounds.width/2 - 18))
                        
                        MiddleCustomButton(image: Image(.othersPageCouponHistory), name: "쿠폰 히스토리",size: (UIScreen.main.bounds.width/2 - 18))
                    }.padding(.trailing,16)
                    
                    Divider()
                    
                    Spacer().frame(height: 41)
                    
                    Text("고객지원")
                        .font(Font.custom("Pretendard", size: 18).weight(.semibold))
                        .lineSpacing(28).frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        MiddleCustomButton(image: Image(.othersPageStoreCare), name: "스토어 케어",size: (UIScreen.main.bounds.width/2 - 18))
                        
                        
                        MiddleCustomButton(image: Image(.othersPageCustomerSound), name: "고객의 소리",size: (UIScreen.main.bounds.width/2 - 18))
                    }.padding(.trailing,16)
                    
                    HStack{
                        MiddleCustomButton(image: Image(.othersPageCouponHistory), name: "쿠폰 등록",size: (UIScreen.main.bounds.width/2 - 18))
                        
                        
                        MiddleCustomButton(image: Image(.othersPageStoreInfo), name: "매장 정보",size: (UIScreen.main.bounds.width/2 - 18))
                    }.padding(.trailing,16)
                    
                    HStack{
                        MiddleCustomButton(image: Image(.othersPageMyReview), name: "마이 스타벅스 리뷰",size: (UIScreen.main.bounds.width/2 - 18))
                        
                        Spacer()
                    }.padding(.trailing,16)
                    
                }.padding(.leading,10).padding(.trailing,10)
                }.frame(maxWidth: .infinity).padding(.leading,11).padding(.trailing,11).background(Color.gray00.opacity(0.3))
               
        }
    }
    
    struct MiddleSquareButton:View{
        let name: String
        let image: Image
        var body: some View{
            Rectangle().foregroundColor(.white)
                .frame(width: 102, height: 108)
                .cornerRadius(15)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 5
                ).overlay(VStack{
                    Button(action: {print(name)}){
                        Text(name)
                    }
                    image
                    Spacer().frame(height: 4)
                }).foregroundColor(.black)
        }
        
    }
    
    struct MiddleCustomButton:View{
        let image: Image
        let name: String
        let size: CGFloat
        var body: some View{
            
            Button(action:{print(name)}){
                HStack{
                    image
                    Text(name).foregroundStyle(Color(.black))
                        .font(Font.custom("Pretendard", size: 16).weight(.semibold))
                        .lineSpacing(22)
                }.frame(width: size,alignment: .leading)
            }.padding(.top, 16).padding(.bottom, 16)
        }
    }
}



#Preview {
    MainView()
}

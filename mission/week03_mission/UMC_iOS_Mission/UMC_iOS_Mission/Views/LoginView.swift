//
//  LoginView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/20/25.
//
import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment:.center){
                Spacer().frame(width: 104)
                _HeaderView().frame(maxWidth: .infinity, alignment: .leading)
                Spacer().frame(width: 104)
                _MiddleView()
                Spacer().frame(width: 104)
                _BottomView()
            }.padding()
        }
        
        
    }
}

struct _HeaderView: View {
    var body: some View{
        
        VStack(alignment: .leading){
            Image("Logo").resizable()
                .frame(width: 97, height: 95)
            
            Spacer().frame(width: 28)
            
            Text("안녕하세요.\n스타벅스입니다.").lineLimit(nil).fixedSize(horizontal: false, vertical: true)
                .font(Font.custom("Pretendard", size: 24))
                .tracking(1.20)
                .foregroundColor(.black)
            
            Spacer().frame(width: 19)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(Font.custom("Pretendard", size: 16).weight(.medium))
                .foregroundColor(Color(red: 0.75, green: 0.74, blue: 0.74))
            
        }
        
    }
}

struct _MiddleView: View {
    @StateObject var userVM: UserViewModel = .init()
    @FocusState private var idFocusNode: Bool
    @FocusState private var pwdFocusNode: Bool
    var body: some View {
        
        
        VStack(alignment:.leading){
            TextField("아이디", text: $userVM.id).font(.custom("Pretendard", size: 13)).focused($idFocusNode)
            
            Divider().background(idFocusNode ? Color(.main) : Color(.gray)).frame(height:0.7)
            
            Spacer().frame(width: 47)
            
            TextField("비밀번호", text: $userVM.pwd).font(.custom("Pretendard", size: 13)).focused($pwdFocusNode)
            
            Divider().background(pwdFocusNode ? Color(.main) : Color(.gray)).frame(height:0.7)
            
            Spacer().frame(width: 47)
            
            
            Button(action: {}) {
                Rectangle()
                    .foregroundColor(.clear)
                    .background((userVM.id != "" && userVM.pwd != "") ? Color.main : Color.gray)
                    .frame(width: UIScreen.main.bounds.size.width - 38, height: 45)
                    .cornerRadius(20)
                    .overlay(
                        Text("로그인하기")
                            .font(Font.custom("Pretendard", size: 16).weight(.medium))
                            .foregroundColor(.white)
                    )
            }
            
        }
    }
}

struct _BottomView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: SignupView()){
                Text("이메일로 회원가입하기")
                    .font(Font.custom("Pretendard", size: 12))
                    .underline()
                    .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
            }

            Spacer().frame(width: 19)
            Image("KakaoLogin")
            Spacer().frame(width: 19)
            Image("AppleLogin")
        }
    }
}


#Preview {
    LoginView()
        .modelContainer(for: Item.self, inMemory: true)
}



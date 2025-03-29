//
//  SignupView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/27/25.
//

import SwiftUI

struct SignupView: View {
    @AppStorage("userId") private var userId: String?
    @AppStorage("userPwd") private var userPwd: String?
    @AppStorage("userEmail") private var userEmail: String?
    @StateObject var signupVM: SignupViewModel = .init()
    @FocusState private var idFocusNode: Bool
    @FocusState private var pwdFocusNode: Bool
    @FocusState private var emailFocusNode: Bool
    var body: some View {
        VStack(alignment: .center){
            
            Spacer().frame(height: 172)

//            Text("\(userId ?? "")")
//            Text("\(userPwd ?? "")")
//            Text("\(userEmail ?? "")")
            
            TextField("아이디", text: $signupVM.id).font(.custom("Pretendard", size: 13)).focused($idFocusNode)
            
            Divider().background(idFocusNode ? Color(.main) : Color(.gray)).frame(height:0.7)
            
            Spacer().frame(height: 49)
            
            TextField("비밀번호", text: $signupVM.pwd).font(.custom("Pretendard", size: 13)).focused($pwdFocusNode)
            
            Divider().background(pwdFocusNode ? Color(.main) : Color(.gray)).frame(height:0.7)
            
            Spacer().frame(height: 49)
            
            TextField("이메일", text: $signupVM.email).font(.custom("Pretendard", size: 13)).focused($emailFocusNode)
            
            Divider().background(pwdFocusNode ? Color(.main) : Color(.gray)).frame(height:0.7)
            
            Spacer().frame(height: 428)
            
            Button(action: {
                userId = signupVM.id
                userPwd = signupVM.pwd
                userEmail = signupVM.email
            }) {
                Rectangle()
                    .foregroundColor(.clear)
                    .background((signupVM.id != "" && signupVM.pwd != "" && signupVM.email != "") ? Color.main : Color.gray)
                    .frame(width: UIScreen.main.bounds.size.width - 38, height: 45)
                    .cornerRadius(20)
                    .overlay(
                        Text("로그인하기")
                            .font(Font.custom("Pretendard", size: 16).weight(.medium))
                            .foregroundColor(.white)
                    )
            }
            
            Spacer().frame(height: 72)
        }.padding()
    }
}
#Preview {
    SignupView()
        .modelContainer(for: Item.self, inMemory: true)
}

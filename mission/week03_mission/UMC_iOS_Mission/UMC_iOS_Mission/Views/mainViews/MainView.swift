//
//  MainView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/28/25.
//

import SwiftUI

struct MainView:View{
    @State private var selectedTab: Int = 0
    let items:[Array] =
    [[Image(.homeGray),Image(.homeGreen )],
     [Image(.payGray),Image(.payGreen)],
     [Image(.orderGray),Image(.orderGreen)],
     [Image(.shopGray),Image(.shopGreen)],
     [Image(.othersGray),Image(.othersGreen)]]
    
    let views:[AnyView] =
    [AnyView(HomeView()),AnyView(OthersView()),AnyView(OthersView()),AnyView(OthersView()),AnyView(OthersView())]
    
    var body: some View {
        TabView(selection: $selectedTab) {
            tabViewItem(title: "Home", imageIndex: 0, selectedImageName: "homeSelected", tag: 0)
            tabViewItem(title: "Pay", imageIndex: 1, selectedImageName: "orderSelected", tag: 1)
            tabViewItem(title: "Order", imageIndex: 2, selectedImageName: "paySelected", tag: 2)
            tabViewItem(title: "Shop", imageIndex: 3, selectedImageName: "shopSelected", tag: 3)
            tabViewItem(title: "Other", imageIndex: 4, selectedImageName: "otherSelected", tag: 4)
        }
    }
    
    
    func tabViewItem(title: String, imageIndex: Int, selectedImageName: String, tag: Int) -> some View {
        
        views[imageIndex]
            .tabItem {
                selectedTab == tag ? items[imageIndex][1] : items[imageIndex][0]
                Text(title).foregroundColor(selectedTab == tag ? .main : .gray)
            }
            .tag(tag)
    }
}

#Preview {
    MainView()
}

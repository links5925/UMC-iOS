//
//  OtherViewModel.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/29/25.
//


import SwiftUI
import Foundation

class OtherViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var email: String = ""
    @Published var pwd: String = ""
}

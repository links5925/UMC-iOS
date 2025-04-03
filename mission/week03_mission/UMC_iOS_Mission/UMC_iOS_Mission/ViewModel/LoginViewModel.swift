
//  LoginViewModel.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/20/25.
//

import SwiftUI
import Foundation

class UserViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var pwd: String = ""
}

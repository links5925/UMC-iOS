//
//  SignupViewModel.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/25/25.
//

import SwiftUI
import Foundation

class SignupViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var email: String = ""
    @Published var pwd: String = ""
}

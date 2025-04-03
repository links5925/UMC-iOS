//
//  HomeViewModel.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 4/3/25.
//

import SwiftUI
import Foundation

class HomeViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var pwd: String = ""
}

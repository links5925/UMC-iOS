//
//  font.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/20/25.
//

import SwiftUICore

extension Font {
    enum Poppins {
        case mainBold20
        case mainBold24
        case mainSemiBold38
        case mainSemiBold24
        case mainSemiBold18
        case mainSemiBold16
        case mainSemiBold14
        case mainSemiBold13
        case mainMedium16
        case mainRegular18
        case mainRegular13
        case mainRegular12
        case mainRegular09
        case mainLight14
        case mainExtra24
        case button
        
        
        
        case custom(String)
        
        var value: String {
            
            
            switch self {
            case .mainBold20:
                return "mainTextBold20"
            case .mainBold24:
                return "mainTextBold24"
            case .mainSemiBold38:
                return "mainTextSemiBold38"
            case .mainSemiBold24:
                return "mainTextSemiBold24"
            case .mainSemiBold18:
                return "mainTextSemiBold18"
            case .mainSemiBold16:
                return "mainTextSemiBold16"
            case .mainSemiBold14:
                return "mainTextSemiBold14"
            case .mainSemiBold13:
                return "mainTextSemiBold13"
            case .mainMedium16:
                return "mainTextMedium16"
            case .mainRegular18:
                return "mainTextRegular18"
            case .mainRegular13:
                return "mainTextRegular13"
            case .mainRegular12:
                return "mainTextRegular12"
            case .mainRegular09:
                return "mainTextRegular09"
            case .mainLight14:
                return "mainTextLight14"
            case .mainExtra24:
                return "mainTextExtra24"
            case .button:
                return "buttonText"
            case .custom(let name):
                return name
            }
            
        }
        
        
    }
    
    static func poppins(_ type: Poppins, size: CGFloat = 17) -> Font {
        return .custom(type.value, size: size)
    }
}

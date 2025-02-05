//
//  TextStyles.swift
//  Agora
//
//  Created by James Florence on 2/4/25.
//
import SwiftUI

extension View {
    func titleStyle() -> some View {
        self
            .font(.system(size: FontSizes.large))
            .fontWeight(.bold)
            .padding(.top, 20)
            .padding(.leading, 16)
    }
    
    func subtitleStyle() -> some View {
        self
            .font(.title2)
            .foregroundColor(.gray)
    }
}

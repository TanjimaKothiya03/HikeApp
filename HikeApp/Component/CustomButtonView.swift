//
//  CustomButtonView.swift
//  HikeApp
//
//  Created by tanjima on 11/09/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(
                    colors: [
                        .white,
                        .customGreenLight,
                        .customGreenMedium
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                )
            
            Circle()
                .stroke(
                    LinearGradient(
                    colors: [
                        .white,
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                    ,lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                    colors: [
                        .white,
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                
                )
        }
        .frame(width: 58,height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

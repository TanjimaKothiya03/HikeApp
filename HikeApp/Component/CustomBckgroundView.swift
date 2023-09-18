//
//  CustomBckgroundView.swift
//  HikeApp
//
//  Created by tanjima on 11/09/23.
//

import SwiftUI

struct CustomBckgroundView: View {
    var body: some View {

        ZStack {
            
            //Mark 3: - DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
                
            //Mark 2: - LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            
            //Mark 1: -SURFACE
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBckgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBckgroundView()
            .padding()
    }
}

//
//  CardView.swift
//  HikeApp
//
//  Created by tanjima on 11/09/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumer: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowSheetView: Bool = false
    //Mark:- - FUNCTIONS
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumer
       
        imageNumer = randomNumber
    }
    
    
    var body: some View {
        ZStack {
            CustomBckgroundView()
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            Spacer()
                            Button {
                                //Action
                                print("The click Button")
                                isShowSheetView.toggle()
                            } label: {
                                CustomButtonView()
                            }
                            .sheet(isPresented: $isShowSheetView){
                                SettingView()
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium,.large])
                            }
                        }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }//:Heading
                .padding(.horizontal,30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumer)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumer)
                    
                }
                
                //Mark: - Footer
                
                Button {
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25,x: 1,y: 2)
                }
                .buttonStyle(GradientButton())
            }
           
        }
        .frame(width: 320,height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

//
//  MainCategoryView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 24/07/25.
//

import SwiftUI

struct MainCategoryView: View {
    var body: some View {
        Rectangle()
            .frame(width: .infinity,height: 220)
            .foregroundStyle(Color.white)
            .overlay {
                VStack(alignment: .trailing){
                    Spacer().frame(height: 16)
                    HStack{
                        Text("Категории")
                            .font(.system(size: 16))
                            .fontWeight(Font.Weight.regular)
                        Spacer()
                        NavigationLink {
                            CategoryView()
                        } label: {
                            Text("Смотреть все")
                                .font(.system(size: 12))
                                .fontWeight(.light)
                                .foregroundStyle(Color(hex: "747474"))
                        }

                    }.padding(.horizontal)
                    Spacer().frame(height: 11)
                    Rectangle()
                        .frame(height: 1)

                        .foregroundStyle(Color(hex: "F3F3F3"))
                        .padding(.horizontal,16)
                    Spacer().frame(height: 22)
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack{
                            ForEach(0..<10) { i in
                                VStack(alignment: .center){
                                    Circle()
                                          .frame(width: 81,height: 81)
                                          .foregroundStyle(Color(hex: "FFD700"))
                                          .overlay {
                                              Image("image")
                                                  .resizable()
                                                  .frame(width: 70, height: 70)
                                          }
                                    Spacer().frame(height: 13)
                                    Text("Все обявления")
                                        .font(.system(size: 10))
                                        .fontWeight(Font.Weight.regular)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 60)
                                }.padding(.leading,15)
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
            
    }
}

#Preview {
    MainCategoryView()
}

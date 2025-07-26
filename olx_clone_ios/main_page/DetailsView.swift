//
//  DetailsView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 25/07/25.
//

import SwiftUI

struct DetailsView: View {
    

    
    var body: some View {
        VStack(alignment: .leading){
            DetailsImageView()
            Text("Сегодня, 10:29")
                .foregroundStyle(Color(hex: "#747474"))
                .font(.system(size: 10))
                .fontWeight(.regular)
                .padding(.top, 8).padding(.horizontal, 16)
                
            Spacer().frame(width: .infinity,height: 15)
            Text("Сантехнические работы")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .padding(.horizontal,16)
            Text("от 100 000 сум")
                .font(.system(size: 22))
                .fontWeight(.bold)
                .padding(.horizontal,16)
            Spacer().frame(width: .infinity,height: 15)
            Text("Описание")
                .font(.system(size: 13))
                .fontWeight(.medium)
                .padding(.horizontal,16)
                .padding(.bottom, 4)
            Text("Сантехнические услуги 24/7 по городу Ташкент и Ташкенсткой области. +998 71 123 45 67")
                .font(.system(size: 12))
                .fontWeight(.regular)
                .padding(.horizontal,16)
                .padding(.bottom, 12)
            
            Text("Алишер")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .padding(.horizontal,16)
            
            Text("Онлайн в 12:02")
                .foregroundStyle(Color(hex: "#747474"))
                .font(.system(size: 10))
                .fontWeight(.regular)
                .padding(.horizontal, 16)
            Spacer().frame(height: 15)
            
            HStack(alignment: .center){
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                        .padding(.horizontal,16)
                        .frame(width: 160,height: 39)

                        .overlay {
                            Text("Оставить отзыв")
                                .font(.system(size: 13))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(hex: "#002F34"))
                        }
                    
                  

                }
                Spacer().frame(width: 10)
                Button {
                    
                } label: {
                    Text("Все объявления автора")
                        .padding(.bottom, 6)
                        .font(.system(size: 13))
                        .foregroundStyle(Color(hex: "#002F34"))
                        .fontWeight(.semibold)
                        .overlay(alignment: .bottom) {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#002F34"))
                                .frame(height: 2)
                        }
                }
                
                
                
            }
            Spacer().frame(height: 10)
            Rectangle()
                .foregroundStyle(Color(hex: "#F3F3F3"))
                .overlay {
                    VStack(alignment: .leading){
                        Spacer().frame(height: 22)
                        Text("Похожие объявления")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .padding(.horizontal,16)
                        Spacer().frame(height: 15)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(0..<10) { index in
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 154,height: 176)
                                        .foregroundStyle(Color.white)
                                        .overlay {
                                            VStack(alignment: .leading){
                                                Image("work_person")
                                                    .resizable()
                                                    .scaledToFill()
                                                    .clipShape(RoundedCorners(radius: 20, corners: [.topLeft, .topRight]))

                                                Spacer()
                                                HStack(alignment: .top){
                                                    Text("Сантехнические работы")
                                                        .font(.system(size: 12))
                                                        .fontWeight(.medium)
                                                    Spacer()
                                                    Button {
                                                        
                                                    } label: {
                                                        Image(systemName: "heart")
                                                            .foregroundStyle(Color.black)
                                                    }

                                                }.padding(.horizontal,11)
                                                Spacer().frame(height: 5)
                                                Text("Ташкент. Сегодня 11:43").font(.system(size: 11))
                                                    .fontWeight(.light)
                                                    .foregroundStyle(Color(hex: "#595959"))
                                                    .padding(.horizontal,11)
                                                Spacer().frame(height: 5)
                                                Text("от 100 000 сум").font(.system(size: 14))
                                                    .fontWeight(.bold)
                                                    .padding(.horizontal,11)
                                                Spacer().frame(height: 13)
                                                
                                            }
                                        
                                        }.padding(.horizontal, 7)
                                }
                            }
                        }
                        
                        Spacer()
                    }
                }
                
            Spacer()
        }
        .frame(width: .infinity, height: .infinity)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
//        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    DetailsView()
}


struct RoundedCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

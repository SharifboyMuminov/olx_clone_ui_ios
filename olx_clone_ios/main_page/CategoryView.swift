//
//  CategoryView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 25/07/25.
//

import SwiftUI

struct CategoryView: View {
    
    @Environment(\.dismiss) var dismiss

    
    var body: some View {
                VStack{
                    ZStack {
                        HStack {
                            Button {
                                dismiss()
                            } label: {
                                Text("Отмена")
                                    .font(.system(size: 14))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(hex: "747474"))
                            }
                            Spacer()
                        }
        
                        Text("Категории")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                    }.padding(.horizontal)
                        .padding(.bottom)
                    ScrollView{
                        VStack (spacing: 10){
                            ForEach(0..<20, id: \.self) { index in
                                CategoryItam()
                                    }
                        }
                    }
        
        
        
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .navigationBarBackButtonHidden(true) 
    }
}

#Preview {
    CategoryView()
}

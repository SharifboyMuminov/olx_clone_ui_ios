//
//  DetailsImageView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 26/07/25.
//

import SwiftUI

struct DetailsImageView: View {
    
    @State var heartValue: Bool = false
    @Environment(\.dismiss) var dismiss

    
    var body: some View {
        Image("work_person")
            .resizable()
            .frame(width: .infinity, height: 330)
            .scaledToFill()
            .overlay(alignment:.top) {
                HStack{
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .foregroundStyle(.white)
                            .frame(width: 12, height: 23)
                    }

                    Spacer()
                    Button {
                        heartValue = !heartValue
                        
                    } label: {
                        Image(systemName: heartValue ? "heart.fill": "heart")
                            .resizable()
                            .scaledToFill()
                            .foregroundStyle(heartValue ? .red: .white)
                            .frame(width: 28, height: 28)
                    }

                }.padding(.top, 70)
                    .padding(.horizontal,16)
                
            }
    }
}

#Preview {
    DetailsImageView()
}

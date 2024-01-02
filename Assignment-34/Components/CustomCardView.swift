//
//  CustomCardView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct CustomCardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            imageView
            mediaInfoView
        }
        .shadow(radius: 3)
    }
    
    private var imageView: some View {
        Image("testImage")
            .resizable()
            .cornerRadius(20)
            .frame(width: 180, height: 260)
            .scaledToFit()
    }
    
    private var mediaInfoView: some View {
        VStack(alignment: .leading) {
            Text("image title")
                .bold()
            
            Text("location")
        }
        .padding()
        .frame(width: 180, alignment: .leading)
        .background(.ultraThinMaterial)
        .foregroundColor(.white)
        .cornerRadius(20)    }
}

#Preview {
    CustomCardView()
}

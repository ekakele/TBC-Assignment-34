//
//  CustomCardView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct CustomCardView: View {
    var item: Item
    
    var body: some View {
        ZStack(alignment: .bottom) {
            imageView
            mediaInfoView
        }
        .shadow(radius: 3)
    }
    
    private var imageView: some View {
        Image(MockData.previewExample.first!.links.first!.href)
            .resizable()
            .cornerRadius(20)
            .frame(width: 350, height: 250)
            .scaledToFit()
    }
    
    private var mediaInfoView: some View {
        VStack(alignment: .leading) {
            Text((MockData.previewExample.first?.data.first!.title)!)
            
            Text((MockData.previewExample.first?.data.first!.center)!)
                .bold()
        }
        .padding()
        .frame(width: 350, alignment: .leading)
        .background(.ultraThinMaterial.opacity(0.5))
        .foregroundColor(.white)
        .cornerRadius(20)    }
}

#Preview {
    CustomCardView(item: MockData.previewExample.first!)
}

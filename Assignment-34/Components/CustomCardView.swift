//
//  CustomCardView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct CustomCardView: View {
    // MARK: - Properties
    var image: String
    var title: String
    var center: String
    
    //    @StateObject var viewModel: MainViewModel
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottom) {
            itemImageView
            itemInfoView
        }
        .shadow(radius: 3)
    }
    
    // MARK: - Components
    private var itemImageView: some View {
        fetchImage()
    }
    
    private func fetchImage() -> some View {
        let imageURL = URL(string: image)
        
        return AsyncImage(
            url: imageURL,
            content: { fetchedImage in
                fetchedImage
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 350, height: 250)
                    .scaledToFit()
                
            }, placeholder: {
                Image("defaultImage")
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 350, height: 250)
                    .scaledToFit()
            })
    }
    
    private var itemInfoView: some View {
        VStack(alignment: .leading) {
            Text(title)
            
            Text(center)
                .bold()
        }
        .padding()
        .frame(width: 350, alignment: .leading)
        .background(.ultraThinMaterial.opacity(0.5))
        .foregroundColor(.white)
        .cornerRadius(20)    }
}

#Preview {
    CustomCardView(image: MockData.previewExample.first!.links.first!.href, title: MockData.previewExample.first!.data.first!.title, center: MockData.previewExample.first!.data.first!.center)
}

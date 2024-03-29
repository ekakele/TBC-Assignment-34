//
//  ItemsGridView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.


import SwiftUI

struct ItemsGridView: View {
    // MARK: - Properties
    var items: [Item]
    var columns = [GridItem(.flexible(), spacing: 0)]
    
    // MARK: - Body
    var body: some View {
        gridScrollView
    }
    
    // MARK: - Components
    private var gridScrollView: some View {
        ScrollView {
            itemsGrid
        }
        .padding(.top, 10)
    }
    
    private var itemsGrid: some View {
        LazyVGrid(columns: columns) {
            ForEach(items, id: \.href) { item in
                setupImageCardView(item: item)
                setupVideoCardView(item: item)
            }
        }
    }
    
    private func setupImageCardView(item: Item) -> some View {
        let image = item.links.first!.href
        let title = item.data.first?.title ?? "Title"
        let center = item.data.first?.center ?? "Center"
        
        return ImageCardView(
            image: image,
            title: title,
            center: center
        )
    }
    
    private func setupVideoCardView(item: Item) -> some View {
        let videoURLString = item.href
        
        return VideoPlayerCardView(
            videoURLString: videoURLString
        )
    }
}

#Preview {
    ItemsGridView(items: MockData.previewExample)
}

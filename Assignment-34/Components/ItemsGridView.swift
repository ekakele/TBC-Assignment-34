//
//  ItemsGridView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.


import SwiftUI

struct ItemsGridView: View {
    
    var items: [Item]
    
    //    @StateObject var viewModel: MainViewModel
    
    var columns = [
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        gridScrollView
    }
    
    private var gridScrollView: some View {
        ScrollView {
            itemsGrid
        }
        .padding(.top, 10)
    }
    
    private var itemsGrid: some View {
        LazyVGrid(columns: columns) {
            ForEach(items, id: \.href) { item in
                setupCustomCardView(item: item)
            }
        }
    }
    
    private func setupCustomCardView(item: Item) -> some View {
        let image = item.links.first!.href
        let title = item.data.first?.title ?? "Title"
        let center = item.data.first?.center ?? "Center"
        
        return CustomCardView(
            image: image,
            title: title,
            center: center
        )
    }
}

#Preview {
    ItemsGridView(items: MockData.previewExample)
}

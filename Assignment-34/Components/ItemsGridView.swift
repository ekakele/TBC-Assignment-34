//
//  ItemsGridView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.


import SwiftUI

struct ItemsGridView: View {
    
    var items: [Item]
    
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
            ForEach(items) { item in
                CustomCardView(items: items)
            }
        }
    }
}

#Preview {
    ItemsGridView(items: MockData.previewExample)
}

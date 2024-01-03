//
//  MainView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            CustomSearchBarView(searchText: $viewModel.searchText)
            itemsGridWithBackgroundView
        }
    }

    var itemsGridWithBackgroundView: some View {
        ZStack {
            backgroundImageView()
            ItemsGridView(items: viewModel.items)
        }
//        .background(backgroundImageView())
    }
    
}

#Preview {
    MainView()
}

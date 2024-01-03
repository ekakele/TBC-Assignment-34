//
//  MainView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State private var query: String = ""
    
    var body: some View {
        NavigationStack {
//                CustomSearchBarView(searchText: $viewModel.searchText)
//                .onChange(of: viewModel.searchText) { value in
//                    viewModel.fetchData()
//                }
            
            CustomSearchBarView(searchText: $query)
            .onChange(of: query) { value in
                viewModel.fetchData(with: value)
            }
                itemsGridWithBackgroundView
//                .searchable(text: $viewModel.searchText)
                

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

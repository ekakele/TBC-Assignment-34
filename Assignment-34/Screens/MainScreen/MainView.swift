//
//  MainView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    @StateObject var viewModel = MainViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            CustomSearchBarView(searchText: $viewModel.query)
                .onChange(of: viewModel.query) {
                    viewModel.fetchData()
                }
            itemsGridWithBackgroundView
        }
    }
    
    // MARK: - Components
    private var itemsGridWithBackgroundView: some View {
        ZStack {
            BackgroundImageView()
            
            if viewModel.items.isEmpty {
                NoDataView()
            } else {
                ItemsGridView(items: viewModel.items)
            }
        }
    }
}

#Preview {
    MainView()
}

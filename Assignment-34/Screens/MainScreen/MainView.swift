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
    @State private var query: String = ""
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            //with View's property
            CustomSearchBarView(searchText: $query)
                .onChange(of: query, { oldValue, newValue in
                    viewModel.fetchData(with: newValue)
                })
            itemsGridWithBackgroundView
            //with searchable modifier
            //                .searchable(text: $viewModel.searchText)
            
            //with ViewModel's property
            //            CustomSearchBarView(searchText: $viewModel.searchText)
            //                .onChange(of: viewModel.searchText) { oldValue, newValue in
            //                    viewModel.fetchData()
            //                }
        }
    }
    
    // MARK: - Components
    private var itemsGridWithBackgroundView: some View {
        ZStack {
            backgroundImageView()
            ItemsGridView(items: viewModel.items)
        }
    }
}

#Preview {
    MainView()
}

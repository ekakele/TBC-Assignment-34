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
        ZStack {
            ItemsGridView(items: viewModel.items)
        }
        .background(backgroundImageView())
    }
}

#Preview {
    MainView()
}

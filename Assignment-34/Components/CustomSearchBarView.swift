//
//  CustomSearchBarView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct CustomSearchBarView: View {
    // MARK: - Properties
    @Binding var searchText: String
    
    // MARK: - Body
    var body: some View {
        ZStack {
            searchBarStackView
        }
        .background(BackgroundImageView())
    }
    
    // MARK: - Components
    private var searchBarStackView: some View {
        HStack {
            iconView
            textFieldView
        }
        .font(.headline)
        .padding()
        .background(searchBarShapeView)
        .padding()
    }
    
    private var searchBarShapeView: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white.opacity(0.7))
            .shadow(
                color: .brown,
                radius: 5
            )
    }
    
    private var textFieldView: some View {
        TextField("Search in NASA Database", text: $searchText)
            .foregroundColor(.black)
            .autocorrectionDisabled(true)
            .overlay(overlayIconView, alignment: .trailing)
    }
    
    private var overlayIconView: some View {
        Image(systemName: "xmark.circle")
            .padding()
            .offset(x: 10)
            .foregroundColor(searchText.isEmpty ? Color.secondary : Color.black)
            .opacity((searchText.isEmpty ? 0.0 : 1.0))
            .onTapGesture {
                searchText = ""
            }
    }
    
    private var iconView: some View {
        Image(systemName: "magnifyingglass")
            .foregroundColor(searchText.isEmpty ? Color.secondary : Color.black)
    }
}

#Preview {
    CustomSearchBarView(searchText: .constant(""))
        .previewLayout(.sizeThatFits)
}

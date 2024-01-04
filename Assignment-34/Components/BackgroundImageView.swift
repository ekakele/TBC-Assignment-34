//
//  BackgroundImageView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct BackgroundImageView: View {

    // MARK: - Body
    var body: some View {
        Image("galaxyBackgroundImage")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundImageView()
}

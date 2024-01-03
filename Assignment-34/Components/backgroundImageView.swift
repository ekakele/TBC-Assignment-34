//
//  backgroundImageView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 03.01.24.
//

import SwiftUI

struct backgroundImageView: View {
    var body: some View {
        Image("galaxyBackgroundImage")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    backgroundImageView()
}

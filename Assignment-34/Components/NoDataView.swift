//
//  NoDataView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 04.01.24.
//

import SwiftUI

struct NoDataView: View {
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("404")
                .foregroundColor(.white)
                .font(.system(size: 50))
                .bold()
            Text("No Data Found")
                .foregroundColor(.white)
                .font(.title)
            Image("astronaut")
                .resizable()
                .frame(width: 100, height: 100)
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    NoDataView()
}

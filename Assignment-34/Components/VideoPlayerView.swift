//
//  VideoPlayerView.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 04.01.24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @State private var player = AVPlayer()
    @State private var isPlaying = false
    private let videoURL = URL(string: "https://images-assets.nasa.gov/video/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon/NHQ_2019_0311_Go%20Forward%20to%20the%20Moon~small.mp4")
    
    
    var body: some View {
        videoPlayerView
            .overlay {
                playPauseButtonView
            }
    }
    
    private var videoPlayerView: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player = AVPlayer(url: videoURL!)
            }
            .frame(width: 350, height: 250)
            .cornerRadius(20)
            .scaledToFit()
    }
    
    private var playPauseButtonView: some View {
        Button {
            isPlaying.toggle()
            isPlaying ? player.play() : player.pause()
        } label: {
            if isPlaying {
                pauseImageView
            } else {
                playImageView
            }
        }
    }
    
    private var playImageView: some View {
        formatImageView(systemName: "play.circle.fill")
    }
    
    private var pauseImageView: some View {
        formatImageView(systemName: "pause.circle.fill")
    }
    
    private func formatImageView(systemName: String) -> some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.gray)
    }
}

#Preview {
    VideoPlayerView()
}

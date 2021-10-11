//
//  ContentView.swift
//  Chord WatchKit Extension
//
//  Created by a on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    //　音を鳴らすためのsoundPlayerクラスのインスタンスを生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        VStack {
            Text("音符をタップ！")
            Image("c")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    soundPlayer.cPlay()
                }
            Image("f")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    soundPlayer.fPlay()
                }
            Image("g")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    soundPlayer.gPlay()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

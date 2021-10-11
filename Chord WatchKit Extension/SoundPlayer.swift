//
//  SoundPlayer.swift
//  Chord
//
//  Created by a on 2021/10/11.
//

import WatchKit
import AVFoundation
import UIKit

class SoundPlayer: NSObject {
    // cの音源データの読み込み
    let cData = NSDataAsset(name: "c1")!.data
    // c用プレイヤーの変数
    var cPlayer: AVAudioPlayer!
    
    func cPlay() {
        do {
            // c用のプレイヤーに、音源データを指定
            cPlayer = try AVAudioPlayer(data: cData)
            
            // cの音源再生
            cPlayer.play()
        } catch {
            print("cで、エラー発生")
        }
    }
    
    let fData = NSDataAsset(name: "f1")!.data
    var fPlayer: AVAudioPlayer!
    func fPlay() {
        do {
            fPlayer = try AVAudioPlayer(data: fData)
            fPlayer.play()
        } catch {
            print("fで、エラー発生")
        }
    }
    
    let gData = NSDataAsset(name: "g1")!.data
    var gPlayer: AVAudioPlayer!
    func gPlay() {
        do {
            gPlayer = try AVAudioPlayer(data: gData)
            gPlayer.play()
        } catch {
            print("gで、エラー発生")
        }
    }
        
}

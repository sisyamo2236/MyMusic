//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by tanaka  on 2021/05/01.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    // シンバルの音源データを読み込む
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    // シンバル用のプレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    // ギターの音源データを読み込む
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    // ギター用のプレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do{
            
        // シンバル用のプレイヤーに、音源データを指定
        cymbalPlayer = try AVAudioPlayer(data: cymbalData)
        
        // シンバルの音源再生
        cymbalPlayer.play()
        }catch{
            print("シンバルで、エラーが発生しました！")
        }
    }// cymbalPlay ここまで

    func guitarPlay() {
        do{
            
        // ギター用のプレイヤーに、音源データを指定
        self.guitarPlayer = try AVAudioPlayer(data: self.guitarData)
            
        // ギターの音源再生
        self.guitarPlayer.play()
        }catch{
            print("ギターで、エラーが発生しました！")
        }
    }// guitarPlay ここまで
}

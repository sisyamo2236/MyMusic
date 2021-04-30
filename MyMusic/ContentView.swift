//
//  ContentView.swift
//  MyMusic
//
//  Created by tanaka  on 2021/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景画像を指定する
            Image("background")
            // リサイズ
                .resizable()
            // 画面いっぱいになるようにセーフエリア外までいっぱいになるように指定
                .edgesIgnoringSafeArea(.all)
            // アスペクト比(縦横比)を維持して短辺基準に収まるようにする
                .aspectRatio(contentMode: .fill)
            
            // 水平にレイシフト(横方向にレイシスト)
            HStack{
                // シンバルボタン
                Button(action:{
                    // ボタンをタップしたときにアクション
                }){
                    // 画像を表示します
                    Image("cymbal")
                    // ボタン内の画像をカラー画像となるように指定する
                        .renderingMode(.original)
                }// シンバルボタン　ここまで
                
                // ギターボタン
                Button(action:{
                    // ボタンをタップした時のアクション
                }){
                    // 画像を表示する
                    Image("guitar")
                        // ボタン内の画像をカラー画像となるように指定する
                        .renderingMode(.original)
                }// ギターボタン　ここまで
                
            } //HStack ここまで
        } // ZStack ここまで
    }// body ここまで
}// ContentView ここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

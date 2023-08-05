//
//  ButtonView.swift
//  SampleLayout_SwiftUI
//
//  Created by 平野裕貴 on 2023/08/05.
//

import SwiftUI

struct ButtonView: View {
    @State private var buttonPressed = false // ボタンの状態を管理します

    var body: some View {
        VStack(spacing: 20) {

            // シンプルなテキストボタン
            Button("テキストボタン") {
                print("テキストボタンが押されました")
            }

            // アクションとテキストのスタイル付きボタン
            Button(action: {
                buttonPressed.toggle() // ボタンの状態を切り替えます
            }) {
                Text("スタイリッシュなボタン")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(buttonPressed ? Color.blue : Color.green)
                    .cornerRadius(10)
            }

            // イメージボタン
            Button(action: {
                print("イメージボタンが押されました")
            }) {
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
            }

            // テキストとイメージの組み合わせたボタン
            Button(action: {
                print("ラベルボタンが押されました")
            }) {
                Label(
                    title: { Text("ラベルボタン") },
                    icon: { Image(systemName: "mail") }
                )
                .font(.headline)
                .foregroundColor(.blue)
            }

            // リンクボタン
            Link("OpenAIのウェブサイト", destination: URL(string: "https://www.openai.com")!)
                .font(.headline)
                .foregroundColor(.purple)

            // ディスエーブルドボタン
            Button("ディセーブルドボタン", action: {})
                .disabled(true)
                .opacity(0.5)
        }
        .padding()
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

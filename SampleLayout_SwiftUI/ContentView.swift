//
//  ContentView.swift
//  SampleLayout_SwiftUI
//
//  Created by 平野裕貴 on 2023/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // 水平スタック：HStack
            HStack(spacing: 10) {
                Text("左")
                Divider() // 区切り線
                Text("中央")
                Divider() // 区切り線
                Text("右")
            }

            // 垂直スタック：VStack
            VStack(alignment: .leading, spacing: 10) {
                Text("上")
                Divider()
                Text("中")
                Divider()
                Text("下")
            }
            .background(Color.gray.opacity(0.2)) // 背景色の追加

            // ZStack：重ね合わせ
            ZStack {
                Image("test7")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text("重ねて表示するテキスト")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.7))
            }

            // グリッド：LazyVGrid
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 20) {
                ForEach(0..<9) { index in
                    Text("アイテム \(index)")
                        .padding()
                        .background(Color.blue.opacity(0.5))
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

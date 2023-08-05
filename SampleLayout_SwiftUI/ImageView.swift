//
//  ImageView.swift
//  SampleLayout_SwiftUI
//
//  Created by 平野裕貴 on 2023/08/05.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
            ScrollView {
                VStack(spacing: 20) {
                    // システムアイコンを使用
                    Image(systemName: "star.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.yellow)

                    // ローカルの画像アセットを使用
                    Image("test4")
                        .resizable() // サイズ変更可能に
                        .scaledToFit() // アスペクト比を保持してフィットさせる
                        .frame(width: 200, height: 150)
                        .clipped() // フレーム内にクリップ

                    // グレースケールと角丸を適用した画像
                    Image("test1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .grayscale(0.5) // グレースケールを適用
                        .clipShape(Circle()) // 円形にクリップ

                    // オーバーレイ付きの画像
                    Image("test6")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 200)
                        .overlay(
                            Text("ハガー市長")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                                .cornerRadius(10),
                            alignment: .bottomLeading // 左下に配置
                        )

                    // ジオメトリリーダーを使用してサイズ調整
                    GeometryReader { geometry in
                        Image("test5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width) // ジオメトリリーダーの幅に合わせる
                    }

                    // URLから画像をロード（非同期）
                    AsyncImage(url: URL(string: "https://example.com/image.png")) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView() // 画像がロードされるまでのプレースホルダー
                    }
                    .frame(width: 200, height: 150)
                }
                .padding()
            }
        }
    }

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

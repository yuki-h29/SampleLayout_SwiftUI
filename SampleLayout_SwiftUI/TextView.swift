//
//  TextView.swift
//  SampleLayout_SwiftUI
//
//  Created by 平野裕貴 on 2023/08/06.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        // VStackを使用して垂直にテキストを配置します
        VStack(alignment: .leading,
               spacing: 20) {

            // ヘッダーとしてのテキスト
            Text("ヘッダー")
                .font(.largeTitle) // フォントサイズを大きくします
                .fontWeight(.bold) // 太字にします
                .foregroundColor(.blue) // 色を青に設定します

            // サブヘッダーとしてのテキスト
            Text("サブヘッダー")
                .font(.headline) // ヘッドラインフォントを使用します
                .padding(.leading) // 左側に余白を追加します

            // 本文としてのテキスト
            Text("この部分は本文です。ここに説明や内容を書くことができます。")
                .font(.body) // 本文用のフォントスタイルを使用します
                .lineLimit(3) // 行数を3に制限します
                .truncationMode(.tail) // 末尾での切り捨てを使用します
                .frame(width: 300) // 幅を300ポイントに制限します

            // フッターとしてのテキスト
            Text("フッター")
                .font(.caption) // キャプションフォントを使用します
                .foregroundColor(.gray) // 色を灰色に設定します
            
                .frame(maxWidth: .infinity,
                       alignment: .trailing) // 右揃えにします
        }
        .padding() // 周囲に余白を追加します
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}


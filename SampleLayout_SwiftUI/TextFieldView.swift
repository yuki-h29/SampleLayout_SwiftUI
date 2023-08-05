//
//  TextFieldView.swift
//  SampleLayout_SwiftUI
//
//  Created by 平野裕貴 on 2023/08/05.
//

import SwiftUI

struct TextFieldView: View {
    @State private var name = "" // ユーザーの名前を保存するための変数
    @State private var email = "" // ユーザーのメールアドレスを保存するための変数
    @State private var password = "" // ユーザーのパスワードを保存するための変数
    @State private var isSecure = false // セキュアフィールドの表示を切り替えるための変数
    
    var body: some View {
        Form {
            // 単純なテキストフィールド
            TextField("名前を入力してください", text: $name)
                .autocapitalization(.words) // 最初の文字を大文字にします
            
            // キーボードタイプをメールに設定したテキストフィールド
            TextField("メールアドレスを入力してください", text: $email)
                .keyboardType(.emailAddress) // メールアドレス用のキーボードを表示します
            
            // セキュアテキストフィールド（パスワード入力用）
            SecureField("パスワードを入力してください", text: $password)
            
            // セキュア入力のオン・オフを切り替えるボタンとテキストフィールド
            Toggle("セキュア入力を切り替える", isOn: $isSecure)
            if isSecure {
                SecureField("セキュアテキスト", text: $password)
            } else {
                TextField("通常のテキスト", text: $password)
            }
            
            // テキストフィールドに対するアクションボタン
            Button("送信") {
                // ここで名前、メール、パスワードの処理を行います
                print("名前: \(name), メール: \(email), パスワード: \(password)")
            }
        }
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}

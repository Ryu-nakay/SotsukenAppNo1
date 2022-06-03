//
//  Login.swift
//  SotsukenAppNo1
//
//  Created by 中山龍 on 2022/04/22.
//

import Foundation
import UIKit
import Combine

// アプリのログイン状況を保持するモデル
class Login: ObservableObject {
    init(isLogin: Bool = false) {
        self.isLogin = isLogin
    }

    // ログイン済みかどうかを判定するフラグ
    @Published var isLogin: Bool

    // ログイン画面orサインアップ画面を切り替えるフラグ
    // false:ログイン true:サインアップ
    @Published var signupFlag = false

    // API通信中かどうか
    @Published var isLoading = false

    // LoginAPIへのURL
    private let loginUrl = "https://hbh6aoer97.execute-api.us-west-1.amazonaws.com/test/login"

    // cancellablesの生成
    private var cancellables = Set<AnyCancellable>()


    func tryToLogin(email: String, password: String) {
        tryToLoginPubliher(email: email, password: password)
            .sink(receiveValue: { result in
                DispatchQueue.main.async {
                    self.isLogin = result
                    self.isLoading = false
                }
            })
            .store(in: &cancellables)
    }

    // ログイン機能
    func tryToLoginPubliher(email: String, password: String) -> AnyPublisher<Bool, Never> {
        self.isLogin = true

        var request = URLRequest(url: URL(string: self.loginUrl)!)
        // HTTPメソッド
        request.httpMethod="POST"

        var bodyContent: [String: Any] = ["email": email, "password": password]
        var bodyString: String = ""

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: bodyContent, options: [])
            let jsonStr = String(bytes: jsonData, encoding: .utf8)!
            bodyString = jsonStr
        } catch let error {
            print(error)
        }
        // HTTPのbodyにメッセージを付与
        request.httpBody="\(bodyString)".data(using: .utf8)


        return Future<Bool, Never> { promise in
            // POSTを行う
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                if error == nil, let data = data, let response = response as? HTTPURLResponse {
                    // HTTPヘッダの取得
                    print("Content-Type: \(response.allHeaderFields["Content-Type"] ?? "")")
                    // HTTPステータスコード
                    print("statusCode: \(response.statusCode)")
                    print(String(data: data, encoding: .utf8) ?? "")

                    var result: LoginResult

                    if response.statusCode == 200 {
                        do {
                            let result = try JSONDecoder().decode(LoginResult.self, from: data)
                            print("result: \(result.body.isAuthentication)")
                            promise(.success(result.body.isAuthentication))
                        } catch let error {
                            print(error) // エラー
                            promise(.success(false))
                        }
                    }
                }
            }.resume()


            class LoginResult: Codable {
                let body: AuthenticationResult

                class AuthenticationResult: Codable{
                    let isAuthentication: Bool
                }
            }
        }.eraseToAnyPublisher()
    }

}

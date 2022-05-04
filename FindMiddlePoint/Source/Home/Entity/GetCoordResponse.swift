//
//  GetCoordResponse.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/03.
//

struct GetCoordResponse: Decodable {
    let status: String
    let addresses: [Address]

}
struct Address: Decodable {
    let roadAddress: String
    let x: String
    let y: String
}

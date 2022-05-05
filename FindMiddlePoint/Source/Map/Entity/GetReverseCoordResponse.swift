//
//  GetReverseCoordResponse.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

struct GetReverseCoordResponse: Decodable {
    let status: Status
    let results: [Results]
}
struct Status: Decodable {
    let code: Int
    let name: String
    let message: String
}
struct Results: Decodable {
    let region: Region
}

struct Region: Decodable {
    let area1: Area
    let area2: Area
    let area3: Area
}

struct Area: Decodable {
    let name: String
}

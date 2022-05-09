//
//  GetPathResponse.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

struct GetPathResponse: Decodable {
    let code: Int
    let message: String
    let route: Route
}

struct Route: Decodable {
    let traoptimal: [Traoptimal]
}

struct Traoptimal: Decodable{
    let summary: Summary
}
struct Summary: Decodable {
    let distance: Int
    let duration: Int
}

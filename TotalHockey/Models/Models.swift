//
//  Models.swift
//  TotalHockey
//
//  Created by Artie Ford on 7/31/23.
//

import Foundation

  // MARK: - League
struct League: Codable {
  let id: Int?
  let name: String?
  let type: String?
  let logo: String?
  let country: Country?
  let seasons: [Season]?
  
  enum CodingKeys: String, CodingKey {
    case id = "id"
    case name = "name"
    case type = "type"
    case logo = "logo"
    case country = "country"
    case seasons = "seasons"
  }
}

  // MARK: - Country
struct Country: Codable {
  let id: Int?
  let name: String?
  let code: String?
  let flag: String?
  
  enum CodingKeys: String, CodingKey {
    case id = "id"
    case name = "name"
    case code = "code"
    case flag = "flag"
  }
}

  // MARK: - Season
struct Season: Codable {
  let season: Int?
  let current: Bool?
  let start: String?
  let end: String?
  
  enum CodingKeys: String, CodingKey {
    case season = "season"
    case current = "current"
    case start = "start"
    case end = "end"
  }
}

  // MARK: - Team
struct Team: Codable {
  let arena: Arena?
  let colors: [String]?
  let country: Country?
  let founded: Int?
  let id: Int?
  let logo: String?
  let name: String?
  let national: Bool?
  
  enum CodingKeys: String, CodingKey {
    case arena = "arena"
    case colors = "colors"
    case country = "country"
    case founded = "founded"
    case id = "id"
    case logo = "logo"
    case name = "name"
    case national = "national"
  }
}

  // MARK: - Arena
struct Arena: Codable {
  let capacity: Int?
  let location: String?
  let name: String?
  
  enum CodingKeys: String, CodingKey {
    case capacity = "capacity"
    case location = "location"
    case name = "name"
  }
}


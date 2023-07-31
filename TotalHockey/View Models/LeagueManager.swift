//
//  LeagueManager.swift
//  TotalHockey
//
//  Created by Artie Ford on 7/31/23.
//

import Foundation

class LeagueManager: ObservableObject {
  @Published var leagues = [League]()
  
  func loadData(completion:@escaping ([League]) -> ()) {
    
    let headers = [
      "X-RapidAPI-Key": key,
      "X-RapidAPI-Host": host
    ]
    
    let request = NSMutableURLRequest(url: NSURL(string: "https://api-hockey.p.rapidapi.com/leagues/")! as URL,
                                      cachePolicy: .useProtocolCachePolicy,
                                      timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    
    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
      if (error != nil) {
        print(error as Any)
      } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
      }
    })
    
    dataTask.resume()
    
    
  }
}

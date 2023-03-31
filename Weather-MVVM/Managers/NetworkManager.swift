//
//
// Weather-MVVM
// 
// NetworkManager.swift
//
// Created by Royal Blue Software
// 

//import Foundation
//
//let headers = [
//    "X-RapidAPI-Key": "xxxxxxxxxx",
//    "X-RapidAPI-Host": "dark-sky.p.rapidapi.com"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://dark-sky.p.rapidapi.com/37.774929,-122.419418,2019-02-20")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
////request.httpMethod = "GET"
////request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error)
//    } else {
//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse)
//    }
//})
//
//dataTask.resume()

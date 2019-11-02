//
//  NetworkingClient.swift
//  AlamofireDemo
//
//  Created by Suresh Shiga on 16/10/18.
//  Copyright © 2018 Test. All rights reserved.
//

import Foundation
import Alamofire

//https://jsonplaceholder.typicode.com/posts

class NetworkingClient {
    
    typealias webServiceResponse = ([[String: Any]]?, _ error: Error?) -> Void
    
    func excute(url:URL, Completion:@escaping webServiceResponse)  {
        
//      let urlRequest = URLRequest (url: url)
//      urlRequest.httpMethod = "PUT"/"POST"/
//      urlRequest.addValue(<#T##value: String##String#>, forHTTPHeaderField: <#T##String#>)
        
        Alamofire.request(url).validate().responseJSON { (response) in
            
            if let error = response.error {
                
                Completion(nil, error)
                
            }else if let responseArr = response.result.value as? [[String: Any]] {
                
                Completion(responseArr, nil)
                
                
            }else if let responseJson = response.result.value as? [String: Any] {
                
                Completion([responseJson], nil)
                
                
            }
        }
        
    }
}

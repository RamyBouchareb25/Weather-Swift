//
//  WebService.swift
//  Weather
//
//  Created by Ramy on 08/11/2023.
//

import Foundation
class WebService {
	func downloadData<T: Codable>(fromURL: String) async -> T?{
		do {
			guard let url = URL(string: fromURL) else { throw NetworkError.badUrl}
			let (data,response) = try await URLSession.shared.data(from: url)
			guard let response = response as? HTTPURLResponse else {throw NetworkError.badResponse}
			guard response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkError.badStatus}
			guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else {throw NetworkError.failedToDecodeResponse}
			return decodedResponse
		} catch NetworkError.badUrl {
			print("Error in the URL")
		} catch NetworkError.badStatus{
			print("Error in the response Code >=300 || <200")
		} catch NetworkError.badResponse{
			print("Error invalid response from server")
		} catch NetworkError.failedToDecodeResponse{
			print("Error whiled decoding information")
		} catch {
			print("Error while downloading data")
		}
		return nil
	}
}

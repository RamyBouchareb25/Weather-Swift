//
//  NetworkError.swift
//  Weather
//
//  Created by Ramy on 08/11/2023.
//

enum NetworkError: Error {
	case badUrl
	case invalidRequest
	case badResponse
	case badStatus
	case failedToDecodeResponse
}

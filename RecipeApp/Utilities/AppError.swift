//
//  AppError.swift
//  RecipeApp
//
//  Created by Hüseyin Sefa Küçük on 8.04.2025.
//


import Foundation

enum AppError: LocalizedError, Identifiable, Equatable {
    var id: String { localizedDescription }

    case badResponse
    case malformedData
    case noRecipes
    case unknown

    var errorDescription: String? {
        switch self {
        case .badResponse:
            return "Invalid server response."
        case .malformedData:
            return "Malformed data. Please try again."
        case .noRecipes:
            return "No recipes to display."
        case .unknown:
            return "An unknown error occurred."
        }
    }
}

//
//  VideoUrlHandler.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 7/12/23.
//

import Foundation

func getVideoURL(for option: String?,currentPage: String) -> URL? {
    guard let option = option else {
        return nil
    }
    
    switch currentPage {
    case "Speaking Facil":
        switch option {
        case "Present Simple":
            return URL(string: "https://adrianlealcaldera.com/presentesimple.mp4")
            
        case "Present Continuous":
            return URL(string: "https://adrianlealcaldera.com/presentecontinuo.mp4")
            // Agrega más casos según sea necesario
        default:
            return URL(string: "https://adrianlealcaldera.com/structurastut.mp4")
        }
    case "Test":
        // Lógica para otra página
        switch option {
        case "Test":
            return URL(string: "https://adrianlealcaldera.com/examenexpl.mp4")
            
        default:
            return URL(string: "https://adrianlealcaldera.com/examenexpl.mp4")
        }
    case "Premium":
        return URL(string: "https://adrianlealcaldera.com/premiumpromo.mp4")
    default:
        return nil
    }
}

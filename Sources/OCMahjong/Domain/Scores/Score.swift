//
//  Score.swift
//
//
//  Created by 斉藤尚也 on 2024/02/27.
//

import Foundation

public struct Score {
    public enum NumberOfPeople: Int, CaseIterable {
        case three = 3
        case four = 4
    }
    
    public let isParent: Bool
    
    public let doubles: Doubles
    public let points: Points
    public let numberOfPeople: NumberOfPeople
    
    public init(isParent: Bool, doubles: Doubles, points: Points, numberOfPeople: NumberOfPeople) {
        self.isParent = isParent
        self.doubles = doubles
        self.points = points
        self.numberOfPeople = numberOfPeople
    }
        
    public func getThumoPoint() -> (parent: Int, child: Int)? {
        switch numberOfPeople {
        case .three:
            switch doubles.value {
            case 1:
                switch points {
                case .twenty, .twentyFive, .oneHundredTen:
                    return nil
                case .thirty:
                    return isParent ? (800, 800) : (700, 500)
                case .forty:
                    return isParent ? (1100, 1100) : (900, 600)
                case .fifty:
                    return isParent ? (1200, 1200) : (1000, 600)
                case .sixty:
                    return isParent ? (1500, 1500) : (1300, 800)
                case .seventy:
                    return isParent ? (1800, 1800) : (1500, 900)
                case .eighty:
                    return isParent ? (2000, 2000) : (1700, 1100)
                case .ninety:
                    return isParent ? (2300, 2300) : (1900, 1200)
                case .hundred:
                    return isParent ? (2400, 2400) : (2000, 1200)
                }
            case 2:
                switch points {
                case .twenty:
                    return isParent ? (1100, 1100) : (900, 600)
                case .twentyFive:
                    return nil
                case .thirty:
                    return isParent ? (1500, 1500) : (1300, 800)
                case .forty:
                    return isParent ? (2000, 2000) : (1700, 1100)
                case .fifty:
                    return isParent ? (2400, 2400) : (2000, 1200)
                case .sixty:
                    return isParent ? (3000, 3000) : (2500, 1500)
                case .seventy:
                    return isParent ? (3500, 3500) : (2900, 1800)
                case .eighty:
                    return isParent ? (3900, 3900) : (3300, 2000)
                case .ninety:
                    return isParent ? (4400, 4400) : (3700, 2300)
                case .hundred:
                    return isParent ? (4800, 4800) : (4000, 2400)
                case .oneHundredTen:
                    return isParent ? (5400, 5400) : (4500, 2700)
                }
            case 3:
                switch points {
                case .twenty:
                    return isParent ? (2000, 1300) : (1700, 1100)
                case .twentyFive:
                    return isParent ? (2400, 1600) : (2000, 1200)
                case .thirty:
                    return isParent ? (3000, 2000) : (2500, 1500)
                case .forty:
                    return isParent ? (3900, 2600) : (3300, 2000)
                case .fifty:
                    return isParent ? (4800, 3200) : (4000, 2400)
                default:
                    return isParent ? (6000, 6000) : (5000, 3000)
                }
            case 4:
                switch points {
                case .twenty:
                    return isParent ? (3900, 3900) : (3300, 2000)
                case .twentyFive:
                    return isParent ? (4800, 4800) : (4000, 2400)
                default:
                    return isParent ? (6000, 6000) : (5000, 3000)
                }
            case 5:
                return isParent ? (6000, 6000) : (5000, 3000)
            case 6...7:
                return isParent ? (9000, 9000) : (7500, 4500)
            case 8...10:
                return isParent ? (12000, 12000) : (10000, 6000)
            case 11...12:
                return isParent ? (18000, 18000) : (15000, 9000)
            default:
                return isParent ? (24000, 24000) : (20000, 12000)
            }
        case .four:
            switch doubles.value {
            case 1:
                switch points {
                case .twenty, .twentyFive:
                    return nil
                case .thirty:
                    return isParent ? (500, 500) : (500, 300)
                case .forty:
                    return isParent ? (700, 700) : (700, 400)
                case .fifty:
                    return isParent ? (800, 800) : (800, 400)
                case .sixty:
                    return isParent ? (1000, 1000) : (1000, 500)
                case .seventy:
                    return isParent ? (1200, 1200) : (1200, 600)
                case .eighty:
                    return isParent ? (1300, 1300) : (1300, 700)
                case .ninety:
                    return isParent ? (1500, 1500) : (1500, 800)
                case .hundred:
                    return isParent ? (1600, 1600) : (1600, 800)
                case .oneHundredTen:
                    return isParent ? (1800, 1800) : (900, 1800)
                }
            case 2:
                switch points {
                case .twenty:
                    return isParent ? (700, 700) : (700, 400)
                case .twentyFive:
                    return nil
                case .thirty:
                    return isParent ? (1000, 1000) : (1000, 500)
                case .forty:
                    return isParent ? (1300, 1300) : (1300, 700)
                case .fifty:
                    return isParent ? (1600, 1600) : (1600, 800)
                case .sixty:
                    return isParent ? (2000, 2000) : (2000, 1000)
                case .seventy:
                    return isParent ? (2300, 2300) : (2300, 1200)
                case .eighty:
                    return isParent ? (2600, 2600) : (2600, 1300)
                case .ninety:
                    return isParent ? (2900, 2900) : (2900, 1500)
                case .hundred:
                    return isParent ? (3200, 3200) : (3200, 1600)
                case .oneHundredTen:
                    return isParent ? (3600, 3600) : (3600, 1800)
                }
            case 3:
                switch points {
                case .twenty:
                    return isParent ? (1300, 1300) : (1300, 700)
                case .twentyFive:
                    return isParent ? (1600, 1600) : (1600, 800)
                case .thirty:
                    return isParent ? (2000, 2000) : (2000, 1000)
                case .forty:
                    return isParent ? (2600, 2600) : (2600, 1300)
                case .fifty:
                    return isParent ? (3200, 3200) : (3200, 1600)
                default:
                    return isParent ? (4000, 4000) : (4000, 2000)
                }
            case 4:
                switch points {
                case .twenty:
                    return isParent ? (2600, 2600) : (2600, 700)
                case .twentyFive:
                    return isParent ? (3200, 3200) : (3200, 800)
                case .thirty:
                    return isParent ? (3900, 3900) : (3900, 1000)
                default:
                    return isParent ? (4000, 4000) : (4000, 2000)
                }
            case 5:
                return isParent ? (4000, 4000) : (4000, 2000)
            case 6...7:
                return isParent ? (6000, 6000) : (6000, 3000)
            case 8...10:
                return isParent ? (8000, 8000) : (8000, 4000)
            case 11...12:
                return isParent ? (12000, 12000) : (6000, 12000)
            default:
                return isParent ? (16000, 16000) : (16000, 8000)
            }
        }
    }
    
    public func getRonPoint() -> Int? {
        switch numberOfPeople {
        case .three:
            switch doubles.value {
            case 1:
                switch points {
                case .twenty, .twentyFive, .oneHundredTen:
                    return nil
                case .thirty:
                    return isParent ? 1500 : 1000
                case .forty:
                    return isParent ? 2000 : 1300
                case .fifty:
                    return isParent ? 2400 : 1600
                case .sixty:
                    return isParent ? 2900 : 2000
                case .seventy:
                    return isParent ? 3400 : 2300
                case .eighty:
                    return isParent ? 3900 : 2600
                case .ninety:
                    return isParent ? 4400 : 2900
                case .hundred:
                    return isParent ? 4800 : 3200
                }
            case 2:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 2400 : 1600
                case .thirty:
                    return isParent ? 2900 : 2000
                case .forty:
                    return isParent ? 3900 : 2600
                case .fifty:
                    return isParent ? 4800 : 3200
                case .sixty:
                    return isParent ? 5800 : 3900
                case .seventy:
                    return isParent ? 6800 : 4500
                case .eighty:
                    return isParent ? 7700 : 5200
                case .ninety:
                    return isParent ? 8700 : 5800
                case .hundred:
                    return isParent ? 9600 : 6400
                case .oneHundredTen:
                    return isParent ? 10600 : 7100
                }
            case 3:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 4800 : 3200
                case .thirty:
                    return isParent ? 5800 : 3900
                case .forty:
                    return isParent ? 7700 : 5200
                case .fifty:
                    return isParent ? 9600 : 6400
                default:
                    return isParent ? 12000 : 8000
                }
            case 4:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 9600 : 6400
                case .thirty:
                    return isParent ? 11600 : 7700
                default:
                    return isParent ? 12000 : 8000
                }
            case 5:
                return isParent ? 12000 : 8000
            case 6...7:
                return isParent ? 18000 : 12000
            case 8...10:
                return isParent ? 24000 : 18000
            case 11...12:
                return isParent ? 32000 : 24000
            default:
                return isParent ? 48000 : 32000
            }
        case .four:
            switch doubles.value {
            case 1:
                switch points {
                case .twenty, .twentyFive:
                    return nil
                case .thirty:
                    return isParent ? 1500 : 1000
                case .forty:
                    return isParent ? 2000 : 1300
                case .fifty:
                    return isParent ? 2400 : 1600
                case .sixty:
                    return isParent ? 2900 : 2000
                case .seventy:
                    return isParent ? 3400 : 2300
                case .eighty:
                    return isParent ? 3900 : 2600
                case .ninety:
                    return isParent ? 4400 : 2900
                case .hundred:
                    return isParent ? 4800 : 3200
                case .oneHundredTen:
                    return isParent ? 5300 : 3600
                }
            case 2:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 2400 : 1600
                case .thirty:
                    return isParent ? 2900 : 2000
                case .forty:
                    return isParent ? 3900 : 2600
                case .fifty:
                    return isParent ? 4800 : 3200
                case .sixty:
                    return isParent ? 5800 : 3900
                case .seventy:
                    return isParent ? 6800 : 4500
                case .eighty:
                    return isParent ? 7700 : 5200
                case .ninety:
                    return isParent ? 8700 : 5800
                case .hundred:
                    return isParent ? 9600 : 6400
                case .oneHundredTen:
                    return isParent ? 10600 : 7100
                }
            case 3:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 4800 : 3200
                case .thirty:
                    return isParent ? 5800 : 3900
                case .forty:
                    return isParent ? 7700 : 5200
                case .fifty:
                    return isParent ? 9600 : 6400
                default:
                    return isParent ? 12000 : 8000
                }
            case 4:
                switch points {
                case .twenty:
                    return nil
                case .twentyFive:
                    return isParent ? 9600 : 6400
                case .thirty:
                    return isParent ? 11600 : 7700
                default:
                    return isParent ? 12000 : 8000
                }
            case 5:
                return isParent ? 12000 : 8000
            case 6...7:
                return isParent ? 18000 : 12000
            case 8...10:
                return isParent ? 24000 : 18000
            case 11...12:
                return isParent ? 32000 : 24000
            default:
                return isParent ? 48000 : 32000
            }
        }
    }
}

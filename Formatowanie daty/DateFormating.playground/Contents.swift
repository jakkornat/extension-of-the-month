import Foundation

extension Date {
    
    enum DateFormat: String {
        case short = "yyyy-MM-dd"
        case long = "yyyy-MM-dd HH:mm:ss"
        case time = "HH:mm:ss"
    }
    
    func toString(withFormat format: DateFormat) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
}

// MARK: Tests
let now = Date()

now.toString(withFormat: .long)     // "2017-11-15 09:17:35"
now.toString(withFormat: .short)    // "2017-11-15"
now.toString(withFormat: .time)     // "09:18:00"

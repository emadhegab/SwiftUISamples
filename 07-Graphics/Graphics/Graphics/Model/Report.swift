
import Foundation
struct Report: Hashable {
    let year: String
    let revenue: Double
}

extension Report {
    static func all() -> [Report] {
        return [
            Report(year: "2011", revenue: 900.2),
            Report(year: "2012", revenue: 400),
            Report(year: "2013", revenue: 100.2),
            Report(year: "2014", revenue: 1999)
        ]
    }
}

import Foundation

//protocol ConfigProtocol {
//    static var rootURL: URL { get }
//    static var format: String { get }
//}
//
//enum Configuration {
//    typealias Dict = [String: Any]
//    static let infoDictionary = getInfoDictionary()
//
//    static func getInfoDictionary() -> Dict {
//        let bundle = Bundle.main
//        let configPath = bundle.path(forResource: "Configuration", ofType: "plist")!
//        let plist = NSDictionary(contentsOfFile: configPath) as? Dict
//
//        var temp = Dict()
//        if let dict = plist?["Common"] as? Dict {
//            temp = dict
//        }
//        if let environment = bundle.infoDictionary?["Environment"] as? String, let dict = plist?[environment] as? Dict {
//            temp = temp.merging(dict) { $1 }
//        }
//        return temp
//    }
//
//    static private func value<T>(for key: String) -> T {
//        guard let value = infoDictionary[key] as? T else {
//            fatalError("Invalid or missing Info.plist key: \(key)")
//        }
//        return value
//    }
//}
//
//extension Configuration: ConfigProtocol {
//    struct Keys {
//        static let rootURL = "root_url"
//        static let format = "format"
//    }
//
//    static var rootURL: URL {
//        return URL(string: value(for: Keys.rootURL))!
//    }
//
//    static var format: String {
//        return value(for: Keys.format)
//    }
//
//    static var rootUrl: String {
//        return Bundle.main.infoDictionary?["rootUrl"] as! String
//    }
//}


protocol ConfigProtocol {

    static var rootUrl: String { get }
}

enum Configuration: ConfigProtocol {

    static var rootUrl: String {
        guard let value = Bundle.main.infoDictionary?["rootUrl"] as? String else {
            fatalError("Invalid or missing Info.plist rootUrl")
        }
        return value
    }
}

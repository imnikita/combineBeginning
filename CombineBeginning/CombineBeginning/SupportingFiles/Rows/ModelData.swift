import Foundation

var faqData: [FAQ] = load("faqData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not fetch \(filename) from the bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not fetch \(filename) from the main bundle.")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not decode \(filename).")
    }

}

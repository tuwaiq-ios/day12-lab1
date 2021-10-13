
import Foundation

protocol CacheContactsWorkerCapable {
    func save(by: SavePolicy, withContacts: [Contact])
    func load() -> Result<[Contact], CacheContactsWorkerError>
}

enum SavePolicy {
    case appending
    case replacing
}

enum CacheContactsWorkerError: Error {
    case noResult
}

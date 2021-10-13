
import Foundation

protocol GetContactsWorkerCapable {
    func get(completion: @escaping (Result<[Contact], GetContactsWorkerError>) -> Void)
}

enum GetContactsWorkerError: Error {
    case noResult
}

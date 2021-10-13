
import Foundation

protocol ContactDetailsInteractorCapable {
    var presenter: ContactDetailsPresenterCapable? { get set }
    func getContactDetailsViewModel()
    func addToContacts()
}

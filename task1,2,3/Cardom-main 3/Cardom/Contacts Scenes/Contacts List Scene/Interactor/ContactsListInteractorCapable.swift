
import Foundation

protocol ContactsListInteractorCapable {
    var presenter: ContactsListPresenterCapable? { get set }
    func getFirstContacts()
    func getNextContacts()
    func contact(at: Int) -> Contact?
}

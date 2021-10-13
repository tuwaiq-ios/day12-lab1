

import Foundation

protocol ContactsListViewCapable {
    var router: ContactsScenesRouterCapable? { get set }
    var interactor: ContactsListInteractorCapable? { get set }
    func loadEnded()
    func displayContacts(contacts: [ContactViewModel])
    func displayLoadingError(title: String, message: String, button: String)
}

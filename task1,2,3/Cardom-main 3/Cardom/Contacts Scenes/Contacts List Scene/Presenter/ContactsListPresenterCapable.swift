

import Foundation

protocol ContactsListPresenterCapable {
    var view: ContactsListViewCapable? { get set }
    func prepareDisplay(ofContacts: [Contact])
    func loadEnded()
    func displayLoadingError()
}

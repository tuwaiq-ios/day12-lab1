
import Foundation
import ContactsUI

protocol ContactDetailsViewCapable {
    var router: ContactsScenesRouterCapable? { get set }
    var interactor: ContactDetailsInteractorCapable? { get set }
    func display(viewModel: ContactDetailsTableViewController.ViewModel)
    func displayAddContact(contact: CNContact)
}

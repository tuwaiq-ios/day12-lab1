
import Foundation

class ContactDetailsInteractor: ContactDetailsInteractorCapable {
    
    var presenter: ContactDetailsPresenterCapable?
    
    private let contact: Contact
    
    init(contact: Contact) {
        self.contact = contact
    }
    
    func getContactDetailsViewModel() {
        presenter?.prepareDisplay(ofContact: contact)
    }
    
    func addToContacts() {
        presenter?.prepareToAdd(contact: contact)
    }
}

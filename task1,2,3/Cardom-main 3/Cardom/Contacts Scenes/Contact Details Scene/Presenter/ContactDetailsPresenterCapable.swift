
import Foundation

protocol ContactDetailsPresenterCapable {
    var view: ContactDetailsViewCapable? { get set }
    func prepareDisplay(ofContact: Contact)
    func prepareToAdd(contact: Contact)
}

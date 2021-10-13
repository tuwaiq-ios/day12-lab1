
import Foundation

class ContactDetailsSceneBuilder {

    class func buildScene(forContact contact: Contact, arroundView view: inout ContactDetailsViewCapable) {
        
        // MARK: Initialise components.
        let presenter = ContactDetailsPresenter()
        let interactor = ContactDetailsInteractor(contact: contact)
        let navigationController = ContactsScenesRouter.sceneDelegate.rootNavigationController
        let router = ContactsScenesRouter(navigationController: navigationController)
        
        // MARK: Link VIP components.
        view.router = router
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
    }
}

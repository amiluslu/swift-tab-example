
import UIKit

enum TabItem: String, CaseIterable {
    case home = "home"
    case calendar = "calendar"
    case profile = "profile"
    
    
    var viewController: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .calendar:
            return CalendarViewController()
        case .profile:
            return ProfileViewController()
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .home:
            return UIImage(named: "icon_home")!
        case .calendar:
            return UIImage(named: "icon_calendar")!
        case .profile:
            return UIImage(named: "icon_profile")!
        }
    }
    
    var displayTitle: String {
        return self.rawValue.capitalized(with: nil)
    }
}

import UIKit

class NewAnnController: UITableViewController {
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsAnnStoryboard") as! DetailsAnnController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

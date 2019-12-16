import UIKit


class SegmentedControlController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            textLabel.text = "First Segment Selected"
        case 1:
            textLabel.text = "Second Segment Selected"
        default:
            break
        }
    }
    
}

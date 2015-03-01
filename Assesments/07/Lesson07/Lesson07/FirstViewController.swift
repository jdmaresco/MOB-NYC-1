
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // print values of NSUserDefaults – test_string and test_number – to firstTextView

        var stringFromDefaults = (NSUserDefaults.standardUserDefaults().objectForKey("test_string") as String)
        
        var numberFromDefaults = String((NSUserDefaults.standardUserDefaults().objectForKey("test_number") as Int))
        
        firstTextView.text = stringFromDefaults + " " + numberFromDefaults
    }
}
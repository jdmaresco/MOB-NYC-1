
import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var fifthTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // store the value of fifthTextView as a space delimited value and turn it into array, save it as a flat file
        
        var txtContents = fifthTextView.text
        
        let strArray = txtContents.componentsSeparatedByString(" ") as NSArray
        
        let path = NSTemporaryDirectory() + "string_as_array.txt"
        
        strArray.writeToFile(path, atomically: true)
        
    }
}

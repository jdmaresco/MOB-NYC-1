

import UIKit
import Foundation

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Save the text in thirdTextView to a flat file when next is pressed
        
        let path = NSTemporaryDirectory() + "text_content.txt"
        
        let textContent: String = thirdTextView.text
        
        var err:NSError?
        
        let result = textContent.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding, error: &err)
        
    }
}

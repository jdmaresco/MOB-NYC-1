

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var fourthTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // print the value of the flat file saved in the previous view to fourthTextView
        
        let path = NSTemporaryDirectory() + "text_content.txt"
        var textOutput: String?
        
        if NSFileManager().fileExistsAtPath(path) {
            var err: NSError?
            textOutput = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: &err)
        }
        
        if let txt = textOutput {
            fourthTextView.text = "The value of the text in the previous view was: \(txt)"
        }
        
        
    }
}

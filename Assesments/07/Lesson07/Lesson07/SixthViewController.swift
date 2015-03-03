

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var sixthTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Take the flat file saved in previous view and print it back to sixthTextView
        
        let path = NSTemporaryDirectory() + "string_as_array.txt"
        
        var arrayOutput: NSArray?
        
        if NSFileManager().fileExistsAtPath(path) {
            var err: NSError?
            arrayOutput = NSArray(contentsOfFile: path)
        }
        
        if let arr = arrayOutput {
            var space = " "
            var arrayAsString = space.join(arr as Array)
            sixthTextView.text = "The value of the text in the fifth view was: \(arrayAsString)"
        }
        
    }
}

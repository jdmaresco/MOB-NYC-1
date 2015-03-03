

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // print the values of string and slider in the settings bundle of the app to secondTextView

        // var sliderSetting = NSUserDefaults.standardUserDefaults().stringForKey()
    
        var name_setting: String = NSUserDefaults.standardUserDefaults().valueForKey("settings_name") as? String ?? ""
        
        var slider_setting: Float = NSUserDefaults.standardUserDefaults().floatForKey("settings_slider")
        
        
        secondTextView.text = "My name is \(name_setting) and my slider value is \(slider_setting)"
        
    }
}

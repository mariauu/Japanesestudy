import UIKit

class ReultViewController: UIViewController {
    
    var correct: Int!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(correct!)門正解！"


    }
    

}

import UIKit
import CDAlertView

class ryokouViewController: UIViewController {
    let properties = [
        "q1": [
            "image": "3airplane-1",
            "answer": "hikouki",
            "opt1": "hikouki",
            "opt2": "kuruma",
            "opt3": "basu",
            "opt4": "shinkansen",
            "description": "This picture is「hikouki」"
        ],
        "q2": [
            "image": "3bousai_water",
            "answer": "mizu",
            "opt1": "mizu",
            "opt2": "okashi",
            "opt3": "niji",
            "opt4": "kuruma",
            "description": "This picture is「mizu」"
        ],
        "q3": [
            "image": "3bousai_water",
            "answer": "su-pa-ma-ketto",
            "opt1": "su-pa-ma-ketto",
            "opt2": "konbini",
            "opt3": "onsen",
            "opt4": "densya",
            "description": "This picture is「su-pa-ma-ketto」"
        ],
        "q4": [
            "image": "3camera_man_boy",
            "answer": "camera",
            "opt1": "camera",
            "opt2": "densya",
            "opt3": "onsen",
            "opt4": "kuruma",
            "description": "This picture is「camera」"
        ],
        "q5": [
            "image": "3car_bus",
            "answer": "basu",
            "opt1": "basu",
            "opt2": "densya",
            "opt3": "shinkansen",
            "opt4": "kuruma",
            "description": "This picture is「bus」"
        ],
        "q6": [
            "image": "３e9f7ce2695644591b6cc0e336dacbd43",
            "answer": "okane",
            "opt1": "okane",
            "opt2": "okashi",
            "opt3": "camera",
            "opt4": "konbini",
            "description": "This picture is「okane」"
        ],
        "q7": [
            "image": "３hospital-building-ambulance",
            "answer": "byouin",
            "opt1": "byouin",
            "opt2": "konbini",
            "opt3": "shinkansen",
            "opt4": "basu",
            "description": "This picture is「byouin」"
        ],
        "q8": [
            "image": "3icon_land",
            "answer": "chizu",
            "opt1": "chizu",
            "opt2": "kuruma",
            "opt3": "camera",
            "opt4": "byouin",
            "description": "This picture is「chizu」"
        ],
        "q9": [
            "image": "３illustrain02-shopping07",
            "answer": "kaimono",
            "opt1": "kaimono",
            "opt2": "densya",
            "opt3": "camera",
            "opt4": "hikouki",
            "description": "This picture is「kaimono」"
        ],
        "q10": [
            "image": "３illustrain08_building04",
            "answer": "ginkou",
            "opt1": "ginkou",
            "opt2": "su-pa-ma-ketto",
            "opt3": "konbini",
            "opt4": "byouin",
            "description": "This picture is「ginkou」"
        ],
        "q11": [
            "image": "3kippu",
            "answer": "kippu",
            "opt1": "chizu",
            "opt2": "kuruma",
            "opt3": "camera",
            "opt4": "byouin",
            "description": "This picture is「chizu」"
        ],
        "q12": [
            "image": "3konsento_outlet_plug",
            "answer": "konsento",
            "opt1": "konsento",
            "opt2": "densya",
            "opt3": "camera",
            "opt4": "hikouki",
            "description": "This picture is「konsento」"
        ],
        "q13": [
            "image": "kukou",
            "answer": "kukou",
            "opt1": "kukou",
            "opt2": "densya",
            "opt3": "konsento",
            "opt4": "kuruma",
            "description": "This picture is「kukou」"
        ],
        "q14": [
            "image": "3landmark_oosakajou",
            "answer": "shiro",
            "opt1": "shiro",
            "opt2": "densya",
            "opt3": "camera",
            "opt4": "chizu",
            "description": "This picture is「shiro」"
        ],
        "q15": [
            "image": "3ryougae_dollar_yen",
            "answer": "ryougae",
            "opt1": "ryougae",
            "opt2": "densya",
            "opt3": "kukou",
            "opt4": "hikouki",
            "description": "This picture is「ryougae」"
        ],
        "q16": [
            "image": "3tatemono_station",
            "answer": "eki",
            "opt1": "eki",
            "opt2": "densya",
            "opt3": "camera",
            "opt4": "kukou",
            "description": "This picture is「eki」"
        ],
        "q17": [
            "image": "3telephone_oyaki",
            "answer": "denwa",
            "opt1": "denwa",
            "opt2": "densya",
            "opt3": "chizu",
            "opt4": "kippu",
            "description": "This picture is「denwa」"
        ],
        "q18": [
            "image": "3travel_passport2",
            "answer": "pasupo-to",
            "opt1": "pasupo-to",
            "opt2": "kippu",
            "opt3": "camera",
            "opt4": "ginkou",
            "description": "This picture is「pasupo-to」"
        ],
        "q19": [
            "image": "3travel_suitcase",
            "answer": "su-tsuke-su",
            "opt1": "su-tsuke-su",
            "opt2": "kippu",
            "opt3": "chizu",
            "opt4": "siro",
            "description": "This picture is「su-tsuke-su」"
        ],
        "q20": [
            "image": "3700kei",
            "answer": "shinkansen",
            "opt1": "shinkansen",
            "opt2": "densya",
            "opt3": "kuruma",
            "opt4": "hikouki",
            "description": "This picture is「shinkansen」"
        ],
        "q21": [
            "image": "33smartphone-icon01-300x300",
            "answer": "keitai",
            "opt1": "keitai",
            "opt2": "chizu",
            "opt3": "kuruma",
            "opt4": "hikouki",
            "description": "This picture is「keitai」"
        ],
    
    ]
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    


    

    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
        

    }
    @IBOutlet weak var imageview: UIImageView!
    
    // 何問目かを把握するための変数
    var cnt = 0
    // 正答数を格納するための変数
    var correct = 0
    
    
    // 問題をセットするためのメソッド
    func setQuestion() {
        cnt = cnt + 1
        if cnt > properties.count {
            //            performSegue(withIdentifier: "toResult", sender: correct)
            return
        }
        
        let prop: [String:String] = properties["q\(cnt)"]!
        // 画像を設定
        imageview.image = UIImage(named: prop["image"]!)
        // 選択肢をランダムに並べかえる
        var opts = [prop["opt1"], prop["opt2"], prop["opt3"], prop["opt4"]]
        for i in 0 ..< opts.count{
            let r = Int(arc4random_uniform(UInt32(opts.count)))
            opts.swapAt(i, r)
        }
        // ボタンに選択肢を入れる
        btn1.setTitle(opts[0], for: .normal)
        btn2.setTitle(opts[1], for: .normal)
        btn3.setTitle(opts[2], for: .normal)
        btn4.setTitle(opts[3], for: .normal)
    }
    
    @IBAction func didClickbtn(_ sender: UIButton) {
        // 正解を取り出す
        let prop: [String:String] = properties["q\(cnt)"]!
        let answer = prop["answer"]!
        
        
        // 選択した値が正解と等しいかチェック
        if answer == sender.titleLabel?.text! {
            correct = correct + 1
            showCorrectAlert(prop)
        }else{
            showWrongAlert(prop)
        }
        
        // 次の問題に
//        setQuestion()
    }
    
    func showCorrectAlert(_ prop: [String:String]){
        let title = "正解"
        let message = prop["description"]
        let alert = CDAlertView(title: title, message: message,type: .success)
        
//        let action = CDAlertViewAction(title: "Next!")
        let action = CDAlertViewAction(
            title: "Next!",
            font: nil,
            textColor: nil,
            backgroundColor: nil,
            handler: { action in
                self.setQuestion()
                return true
        })
        
        alert.add(action: action)
        //        アラートの表示
        alert.show()
        
        
    }
    func showWrongAlert(_ prop: [String:String]) {
        let title = "不正解..."
        let message = prop["description"]
        let alert = CDAlertView(title: title,message: message,type: .error)
        
//        let action = CDAlertViewAction(title: "Next!")
        
        let action = CDAlertViewAction(
            title: "Next!",
            font: nil,
            textColor: nil,
            backgroundColor: nil,
            handler: { action in
                self.setQuestion()
                return true
        })
        
        alert.add(action: action)
        alert.show()
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            if id == "toResult" {
                //                let nextVC = segue.destination as! ResultViewController
                //                nextVC.correct = correct
            }
        }
    }
    



}

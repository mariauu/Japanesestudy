
import UIKit
import CDAlertView

class aisatuViewController: UIViewController {
    let properties = [
        "q1": [
            "image": "1.ありがとう",
            "answer": "arigatou",
            "opt1": "arigatou",
            "opt2": "konnitiwa",
            "opt3": "ohayou",
            "opt4": "oyasumi",
            "description": "This picture is「arigatou」"
        ],
        "q2": [
            "image": "1.いただきます",
            "answer": "itadakimasu",
            "opt1": "itadakimasu",
            "opt2": "konnitiwa",
            "opt3": "ohayou",
            "opt4": "omedetou",
            "description": "This picture is「itadakimasu」"
        ],
        "q3": [
            "image": "1.いってらっしゃい",
            "answer": "itterassyai",
            "opt1": "itterassyai",
            "opt2": "arigatou",
            "opt3": "ohayou",
            "opt4": "gomenasai",
            "description": "This picture is「itterassyai」"
        ],
        "q4": [
            "image": "1.おはよう",
            "answer": "ohayou",
            "opt1": "itadakimasu",
            "opt2": "konnitiwa",
            "opt3": "ohayou",
            "opt4": "oyasumi",
            "description": "This picture is「ohayou」"
        ],
        "q5": [
            "image": "1.おめでとう",
            "answer": "omedetou",
            "opt1": "omedetou",
            "opt2": "arigatou",
            "opt3": "ohayou",
            "opt4": "oyasumi",
            "description": "This picture is「omedetou」"
        ],
        "q6": [
            "image": "1.おやすみ",
            "answer": "oyasumi",
            "opt1": "oyasumi",
            "opt2": "konnitiwa",
            "opt3": "ohayou",
            "opt4": "itterassyai",
            "description": "This picture is「oyasumi」"
        ],
        "q7": [
            "image": "1.お誕生日おめでとう",
            "answer": "otanjyoubiomedetou",
            "opt1": "arigatou",
            "opt2": "otanjyoubiomedetou",
            "opt3": "ohayou",
            "opt4": "oyasumi",
            "description": "This picture is「otanjyoubiomedetou」"
        ],
        "q8": [
            "image": "1.ごちそうさま",
            "answer": "gotisousamadeshita",
            "opt1": "gotisousamadeshita",
            "opt2": "konbanwa",
            "opt3": "ohayou",
            "opt4": "oyasumi",
            "description": "This picture is「gotisousamadeshita」"
        ],
        "q9": [
            "image": "1.ごめんなさい",
            "answer": "gomennasai",
            "opt1": "arigatou",
            "opt2": "gomennasai",
            "opt3": "omedetou",
            "opt4": "oyasumi",
            "description": "This picture is「gomennasai」"
        ],
        "q10": [
            "image": "1.こんにちは",
            "answer": "konnitiwa",
            "opt1": "arigatou",
            "opt2": "gomennasai",
            "opt3": "omedetou",
            "opt4": "oyasumi",
            "description": "This picture is「konnitiwa」"
        ],
        "q11": [
            "image": "1.さようなら",
            "answer": "sayounara",
            "opt1": "arigatou",
            "opt2": "gomennasai",
            "opt3": "sayounara",
            "opt4": "konnitiwa",
            "description": "This picture is「sayounara」"
        ],
        "q12": [
            "image": "1.すみません",
            "answer": "summimasen",
            "opt1": "sumimasen",
            "opt2": "konnitiwa",
            "opt3": "omedetou",
            "opt4": "oyasumi",
            "description": "This picture is「sumimasen」"
        ],
        "q13": [
            "image": "1.すみません",
            "answer": "sumimasen",
            "opt1": "suimasen",
            "opt2": "konnitiwa",
            "opt3": "omedetou",
            "opt4": "oyasumi",
            "description": "This picture is「suimasen」"
        ],
        "q14": [
            "image": "1.ただいま",
            "answer": "tadaima",
            "opt1": "tadaima",
            "opt2": "okaeri",
            "opt3": "sumimasen",
            "opt4": "oyasumi",
            "description": "This picture is「tadaima」"
        ]
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

import UIKit
import CDAlertView

class shigotoViewController: UIViewController {
    let properties = [
        "q1": [
            "image": "2biyoushi_woman_cut",
            "answer": "biyoushi",
            "opt1": "biyoushi",
            "opt2": "isya",
            "opt3": "moderu",
            "opt4": "sensei",
            "description": "This picture is「biyoushi」"
        ],
        "q2": [
            "image": "2computer_programming_man",
            "answer": "purogurama-",
            "opt1": "purogurama-",
            "opt2": "isya",
            "opt3": "daiku",
            "opt4": "syouboushi",
            "description": "This picture is「purogurama-」"
        ],
        "q3": [
            "image": "2daiku",
            "answer": "daiku",
            "opt1": "daiku",
            "opt2": "isya",
            "opt3": "sensei",
            "opt4": "syouboushi",
            "description": "This picture is「daiku」"
        ],
        "q4": [
            "image": "2fashion_show_woman",
            "answer": "moderu",
            "opt1": "moderu",
            "opt2": "kangoshi",
            "opt3": "sensei",
            "opt4": "biyoushi",
            "description": "This picture is「moderu」"
        ],
        "q5": [
            "image": "2jieitai_man",
            "answer": "jieitai",
            "opt1": "jieitai",
            "opt2": "syouboushi",
            "opt3": "daiku",
            "opt4": "anaunsa-",
            "description": "This picture is「jieitai」"
        ],
        "q6": [
            "image": "2job_bartender",
            "answer": "bartenda-",
            "opt1": "bartenda-",
            "opt2": "keisatukan",
            "opt3": "daiku",
            "opt4": "anaunsa-",
            "description": "This picture is「bartenda-」"
        ],
        "q7": [
            "image": "2job_bengoshi_woman",
            "answer": "bengoshi",
            "opt1": "bengoshi",
            "opt2": "keisatukan",
            "opt3": "neirisuto",
            "opt4": "biyoushi",
            "description": "This picture is「bengoshi」"
        ],
        "q8": [
            "image": "2job_ca_smile_cap",
            "answer": "cameraman",
            "opt1": "cameraman",
            "opt2": "anaunsa-",
            "opt3": "neirisuto",
            "opt4": "bengoshi",
            "description": "This picture is「cameraman」"
        ],
        "q9": [
            "image": "2job_kasyu",
            "answer": "kasyu",
            "opt1": "kasyu",
            "opt2": "anaunsa-",
            "opt3": "moderu",
            "opt4": "biyoushi",
            "description": "This picture is「kasyu」"
        ],
        "q10": [
            "image": "2job_police_man",
            "answer": "keisatsukan",
            "opt1": "keisatsukan",
            "opt2": "syouboushi",
            "opt3": "daiku",
            "opt4": "jieitai",
            "description": "This picture is「keisatsukan」"
        ],
        "q11": [
            "image": "2kids_jidou_club",
            "answer": "hoikushi",
            "opt1": "hoikushi",
            "opt2": "anaunsa-",
            "opt3": "kasyu",
            "opt4": "biyoushi",
            "description": "This picture is「hoikushi」"
        ],
        "q12": [
            "image": "2manzai",
            "answer": "geinin",
            "opt1": "geinin",
            "opt2": "anaunsa-",
            "opt3": "jieitai",
            "opt4": "bartenda-",
            "description": "This picture is「geinin」"
        ],
        "q13": [
            "image": "2nailist_nail_salon_woman",
            "answer": "neirisuto",
            "opt1": "neirisuto",
            "opt2": "anaunsa-",
            "opt3": "kasyu",
            "opt4": "hoikushi",
            "description": "This picture is「neirisuto」"
        ],
        "q14": [
            "image": "2nurse",
            "answer": "kangoshi",
            "opt1": "kangoshi",
            "opt2": "anaunsa-",
            "opt3": "kasyu",
            "opt4": "hoikushi",
            "description": "This picture is「kangoshi」"
        ],
        "q15": [
            "image": "2publicdomainq-0013305snaynp",
            "answer": "pairotto",
            "opt1": "pairotto",
            "opt2": "syouboushi",
            "opt3": "jieitai",
            "opt4": "keisatsukan",
            "description": "This picture is「pairotto」"
        ],
        "q16": [
            "image": "2school_class_woman",
            "answer": "sensei",
            "opt1": "pairotto",
            "opt2": "sensei",
            "opt3": "jieitai",
            "opt4": "isya",
            "description": "This picture is「sensei」"
        ],
        "q17": [
            "image": "2syoubousi",
            "answer": "syouboushi",
            "opt1": "syouboushi",
            "opt2": "sensei",
            "opt3": "jieitai",
            "opt4": "anaunsa-",
            "description": "This picture is「syouboushi」"
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
        
        
        let action = CDAlertViewAction(
            title: "Next!",
            font: nil,
            textColor: nil,
            backgroundColor: nil,
            handler: { action in
                self.setQuestion()
                return true
        })
        
        
//        let action = CDAlertViewAction(title: "Next!")
        alert.add(action: action)
        //        アラートの表示
        alert.show()
        
        
    }
    func showWrongAlert(_ prop: [String:String]) {
        let title = "不正解..."
        let message = prop["description"]
        let alert = CDAlertView(title: title,message: message,type: .error)
        
        let action = CDAlertViewAction(
            title: "Next!",
            font: nil,
            textColor: nil,
            backgroundColor: nil,
            handler: { action in
                self.setQuestion()
                return true
        })
//        let action = CDAlertViewAction(title: "Next!")
        alert.add(action: action)
        alert.show()
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            if id == "toResult" {

                
            }
        }
    }
    

}

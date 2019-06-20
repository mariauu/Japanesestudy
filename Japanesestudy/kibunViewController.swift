import UIKit
import CDAlertView

class kibunViewController: UIViewController {
    let properties = [
        "q1": [
            "image": "気分.001",
            "answer": "tanoshii",
            "opt1": "tanoshii",
            "opt2": "ureshii",
            "opt3": "kanashii",
            "opt4": "turai",
            "description": "This picture is「tanoshii」"
        ],
        "q2": [
            "image": "気分.002",
            "answer": "ureshii",
            "opt1": "tanoshii",
            "opt2": "ureshii",
            "opt3": "komaru",
            "opt4": "mukatuku",
            "description": "This picture is「ureshii」"
        ],
        "q3": [
            "image": "気分.003",
            "answer": "kanashii",
            "opt1": "kanashii",
            "opt2": "ureshii",
            "opt3": "komaru",
            "opt4": "uresii",
            "description": "This picture is「kanashii」"
        ],
        "q4": [
            "image": "気分.004",
            "answer": "kanashii",
            "opt1": "kanashii",
            "opt2": "ureshii",
            "opt3": "komaru",
            "opt4": "uresii",
            "description": "This picture is「kanashii」"
        ],
        
        "q5": [
            "image": "気分.005",
            "answer": "tsurai",
            "opt1": "tsurai",
            "opt2": "ureshii",
            "opt3": "sugoi",
            "opt4": "otitsuku",
            "description": "This picture is「tsurai」"
        ],
        
        "q6": [
            "image": "気分.006",
            "answer": "mukatsuku",
            "opt1": "mukatsuku",
            "opt2": "tsurai",
            "opt3": "kandou",
            "opt4": "akireru",
            "description": "This picture is「mukatsuku」"
        ],
        "q7": [
            "image": "気分.007",
            "answer": "anshin",
            "opt1": "anshin",
            "opt2": "tanoshii",
            "opt3": "suki",
            "opt4": "kouhun",
            "description": "This picture is「anshin」"
        ],
        "q8": [
            "image": "気分.008",
            "answer": "suki",
            "opt1": "suki",
            "opt2": "kirai",
            "opt3": "tsurai",
            "opt4": "otitsuku",
            "description": "This picture is「suki」"
        ],
        "q9": [
            "image": "気分.009",
            "answer": "kirai",
            "opt1": "kirai",
            "opt2": "suki",
            "opt3": "tanoshii",
            "opt4": "sugoi",
            "description": "This picture is「kirai」"
        ],
        "q10": [
            "image": "気分.010",
            "answer": "kowai",
            "opt1": "kowai",
            "opt2": "kirai",
            "opt3": "tsurai",
            "opt4": "shitto",
            "description": "This picture is「kowai」"
        ],
        "q11": [
            "image": "気分.011",
            "answer": "odoroku",
            "opt1": "odoroku",
            "opt2": "kanashii",
            "opt3": "suki",
            "opt4": "kouhun",
            "description": "This picture is「odoroku」"
        ],
        "q12": [
            "image": "気分.012",
            "answer": "okoru",
            "opt1": "okoru",
            "opt2": "suki",
            "opt3": "kanashii",
            "opt4": "tanoshii",
            "description": "This picture is「okoru」"
        ],
        "q13": [
            "image": "気分.013",
            "answer": "taikutsu",
            "opt1": "taikutsu",
            "opt2": "otitsuku",
            "opt3": "kirai",
            "opt4": "shinpai",
            "description": "This picture is「taikutsu」"
        ],
        "q14": [
            "image": "気分.014",
            "answer": "kuyashii",
            "opt1": "kuyashii",
            "opt2": "kanashii",
            "opt3": "ureshii",
            "opt4": "tanoshii",
            "description": "This picture is「kuyashii」"
        ],
        "q15": [
            "image": "気分.015",
            "answer": "subarashii",
            "opt1": "subarashii",
            "opt2": "sabishii",
            "opt3": "ureshii",
            "opt4": "kanashii",
            "description": "This picture is「subarashii」"
        ],
        "q16": [
            "image": "気分.016",
            "answer": "akireru",
            "opt1": "akireru",
            "opt2": "tsukareru",
            "opt3": "otitsuku",
            "opt4": "kandou",
            "description": "This picture is「akireru」"
        ],
        "q17": [
            "image": "気分.017",
            "answer": "shinpai",
            "opt1": "shinpai",
            "opt2": "sabishii",
            "opt3": "tsurai",
            "opt4": "suki",
            "description": "This picture is「shinpai」"
        ],
        "q18": [
            "image": "気分.018",
            "answer": "komaru",
            "opt1": "komaru",
            "opt2": "kirai",
            "opt3": "odoroku",
            "opt4": "kuyashii",
            "description": "This picture is「komaru」"
        ],
        "q19": [
            "image": "気分.019",
            "answer": "shitto",
            "opt1": "shitto",
            "opt2": "shinpai",
            "opt3": "tsurai",
            "opt4": "kowai",
            "description": "This picture is「shitto」"
        ],
        "q20": [
            "image": "気分.20",
            "answer": "hazukashii",
            "opt1": "hazukashii",
            "opt2": "tanoshii",
            "opt3": "shitto",
            "opt4": "kintyou",
            "description": "This picture is「hazukashii」"
        ],
       
        "q21": [
            "image": "気分.021",
            "answer": "kandou",
            "opt1": "kandou",
            "opt2": "odoroku",
            "opt3": "tanoshii",
            "opt4": "kouhun",
            "description": "This picture is「kandou」"
        ],
        "q22": [
            "image": "気分.021",
            "answer": "subarashii",
            "opt1": "subarashii",
            "opt2": "sabishii",
            "opt3": "ureshii",
            "opt4": "kanashii",
            "description": "This picture is「subarashii」"
        ],
        
        "q23": [
            "image": "気分.023",
            "answer": "otisuku",
            "opt1": "otitsuku",
            "opt2": "kandou",
            "opt3": "tsurai",
            "opt4": "shitto",
            "description": "This picture is「otitsuku」"
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
        setQuestion()
    }
    
    func showCorrectAlert(_ prop: [String:String]){
        let title = "正解"
        let message = prop["description"]
        let alert = CDAlertView(title: title, message: message,type: .success)
        
        let action = CDAlertViewAction(title: "Next!")
        alert.add(action: action)
        //        アラートの表示
        alert.show()
        
        
    }
    func showWrongAlert(_ prop: [String:String]) {
        let title = "不正解..."
        let message = prop["description"]
        let alert = CDAlertView(title: title,message: message,type: .error)
        
        let action = CDAlertViewAction(title: "Next!")
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

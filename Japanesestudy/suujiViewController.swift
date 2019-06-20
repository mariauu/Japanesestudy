import UIKit
import CDAlertView

class suujiViewController: UIViewController {
    let properties = [
        "q1": [
            "image": "Image",
            "answer": "ichi",
            "opt1": "ichi",
            "opt2": "san",
            "opt3": "hachi",
            "opt4": "nana",
            "description": "This picture is「ichi」"
        ],
        "q2": [
            "image": "Image-1",
            "answer": "ni",
            "opt1": "ni",
            "opt2": "san",
            "opt3": "hachi",
            "opt4": "go",
            "description": "This picture is「ni」"
        ],
        "q3": [
            "image": "Image-2",
            "answer": "san",
            "opt1": "san",
            "opt2": "yon",
            "opt3": "nana",
            "opt4": "go",
            "description": "This picture is「san」"
        ],
        "q4": [
            "image": "Image-3",
            "answer": "yon",
            "opt1": "san",
            "opt2": "yon",
            "opt3": "nana",
            "opt4": "roku",
            "description": "This picture is「yon」"
        ],
        "q5": [
            "image": "Image-4",
            "answer": "go",
            "opt1": "go",
            "opt2": "ni",
            "opt3": "ichi",
            "opt4": "go",
            "description": "This picture is「go」"
        ],
        "q6": [
            "image": "Image-5",
            "answer": "roku",
            "opt1": "san",
            "opt2": "yon",
            "opt3": "san",
            "opt4": "roku",
            "description": "This picture is「roku」"
        ],
        "q7": [
            "image": "Image-6",
            "answer": "nana",
            "opt1": "nana",
            "opt2": "hachi",
            "opt3": "san",
            "opt4": "roku",
            "description": "This picture is「nana」"
        ],
        "q8": [
            "image": "Image-7",
            "answer": "hachi",
            "opt1": "hachi",
            "opt2": "kyuu",
            "opt3": "nana",
            "opt4": "go",
            "description": "This picture is「hachi」"
        ],
        "q9": [
            "image": "Image-8",
            "answer": "kyuu",
            "opt1": "ichi",
            "opt2": "kyuu",
            "opt3": "san",
            "opt4": "go",
            "description": "This picture is「kyuu」"
        ],
        "q10": [
            "image": "Image-9",
            "answer": "jyuichi",
            "opt1": "jyuichi",
            "opt2": "hachi",
            "opt3": "roku",
            "opt4": "ni",
            "description": "This picture is「jyuichi」"
        ],
        "q11": [
            "image": "Image-10",
            "answer": "jyuni",
            "opt1": "hachi",
            "opt2": "jyuuni",
            "opt3": "san",
            "opt4": "yon",
            "description": "This picture is「jyuichi」"
        ],
        "q12": [
            "image": "Image-11",
            "answer": "jyusan",
            "opt1": "jyusan",
            "opt2": "hachi",
            "opt3": "nana",
            "opt4": "go",
            "description": "This picture is「jyusan」"
        ],
        "q13": [
            "image": "Image-12",
            "answer": "jyuyon",
            "opt1": "jyuyon",
            "opt2": "ichi",
            "opt3": "hachi",
            "opt4": "jyuichi",
            "description": "This picture is「jyuyon」"
        ],
        "q14": [
            "image": "Image-13",
            "answer": "jyugo",
            "opt1": "jyugo",
            "opt2": "jyusan",
            "opt3": "jyu",
            "opt4": "jyuichi",
            "description": "This picture is「jyugo」"
        ],
        "q15": [
            "image": "Image-14",
            "answer": "jyuroku",
            "opt1": "jyuroku",
            "opt2": "jyuhachi",
            "opt3": "jyunana",
            "opt4": "jyunichi",
            "description": "This picture is「jyuroku」"
        ],
        "q16": [
            "image": "数字.027",
            "answer": "jyunana",
            "opt1": "jyunana",
            "opt2": "jyusan",
            "opt3": "jyu",
            "opt4": "jyuichichi",
            "description": "This picture is「jyugo」"
        ],
        "q17": [
            "image": "Image-15",
            "answer": "jyuhachi",
            "opt1": "jyuhachi",
            "opt2": "jyukyu",
            "opt3": "jyunsan",
            "opt4": "jyunichi",
            "description": "This picture is「jyuhachi」"
        ],
        "q18": [
            "image": "Image-16",
            "answer": "jyukyu",
            "opt1": "jyuroku",
            "opt2": "jyukyu",
            "opt3": "jyungo",
            "opt4": "jyuni",
            "description": "This picture is「jyukyu」"
        ],
        "q19": [
            "image": "Image-17",
            "answer": "nijyu",
            "opt1": "nijyu",
            "opt2": "jyu",
            "opt3": "jyuichi",
            "opt4": "nijyuni",
            "description": "This picture is「nijyu」"
        ],
        "q20": [
            "image": "Image-18",
            "answer": "sanjyu",
            "opt1": "sanjyu",
            "opt2": "yonjyu",
            "opt3": "jyu",
            "opt4": "san",
            "description": "This picture is「sanjyu」"
        ],
        "q21": [
            "image": "Image-17",
            "answer": "yonjyu",
            "opt1": "yonjyu",
            "opt2": "sanjyu",
            "opt3": "jyu",
            "opt4": "younjyuichi",
            "description": "This picture is「yonjyu」"
        ],
        "q22": [
            "image": "Image-20",
            "answer": "gojyu",
            "opt1": "gojyu",
            "opt2": "sanjyu",
            "opt3": "jyugo",
            "opt4": "hachijyu",
            "description": "This picture is「gojyu」"
        ],
        "q23": [
            "image": "Image-21",
            "answer": "rokujyu",
            "opt1": "rokujyu",
            "opt2": "jyuroku",
            "opt3": "jyunana",
            "opt4": "nijyuroku",
            "description": "This picture is「rokujyu」"
        ],
        "q24": [
            "image": "Image-22",
            "answer": "nanajyu",
            "opt1": "nanajyu",
            "opt2": "jyunana",
            "opt3": "jyuhachi",
            "opt4": "sanjyunana",
            "description": "This picture is「nanajyu」"
        ],
        "q25": [
            "image": "Image-23",
            "answer": "hachijyu",
            "opt1": "hachijyu",
            "opt2": "jyuhachi",
            "opt3": "hachi",
            "opt4": "nijyu",
            "description": "This picture is「hachijyu」"
        ],
        "q26": [
            "image": "Image-24",
            "answer": "kyujyu",
            "opt1": "kyujyu",
            "opt2": "jyukyu",
            "opt3": "yonjyukyu",
            "opt4": "kyu",
            "description": "This picture is「kyujyu」"
        ],
        "q27": [
            "image": "Image-25",
            "answer": "hyaku",
            "opt1": "nanajyu",
            "opt2": "hyaku",
            "opt3": "jyu",
            "opt4": "hyakujyu",
            "description": "This picture is「hyaku」"
        ],

        "q28": [
            "image": "Image-26",
            "answer": "sen",
            "opt1": "sen",
            "opt2": "hyaku",
            "opt3": "jyu",
            "opt4": "hyakujyu",
            "description": "This picture is「sen」"
        ],
        "q29": [
            "image": "Image-27",
            "answer": "ichiman",
            "opt1": "ichiman",
            "opt2": "sen",
            "opt3": "jyu",
            "opt4": "hyakujyu",
            "description": "This picture is「ichiman」"
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

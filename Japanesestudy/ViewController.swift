import UIKit

import CDAlertView

class ViewController: UIViewController {
    // 問題の情報を配列で定義
    let properties = [
        "q1": [
            "image": "いちご",
            "answer": "itigo",
            "opt1": "mango",
            "opt2": "tamago",
            "opt3": "itigo",
            "opt4": "dango",
            "description": "This picture is「itigo」"
        ],
        "q2": [
            "image": "寿司",
            "answer": "sushi",
            "opt1": "kani",
            "opt2": "tamago",
            "opt3": "sushi",
            "opt4": "kinoko",
            "description": "This picture is「sushi」"
        ],
        "q3": [
            "image": "アイスクリーム",
            "answer": "aisukuri-mu",
            "opt1": "chocore-to",
            "opt2": "tamago",
            "opt3": "aisukuri-mu",
            "opt4": "onigiri",
            "description": "This picture is「aisukuri-mu」"
        ],

        "q4": [
            "image": "いか",
            "answer": "ika",
            "opt1": "mango",
            "opt2": "tamago",
            "opt3": "ika",
            "opt4": "udon",
            "description": "This picture is「ika」"
        ],

        "q5": [
            "image": "いくら",
            "answer": "ikura",
            "opt1": "ikura",
            "opt2": "tamago",
            "opt3": "uni",
            "opt4": "moti",
            "description": "This picture is「ikura」"
        ],
        "q6": [
            "image": "うどん",
            "answer": "udon",
            "opt1": "udon",
            "opt2": "nori",
            "opt3": "gyu-don",
            "opt4": "soba",
            "description": "This picture is「udon」"
        ],
        "q7": [
            "image": "えび",
            "answer": "ebi",
            "opt1": "ebi",
            "opt2": "tamago",
            "opt3": "kani",
            "opt4": "ringo",
            "description": "This picture is「ebi」"
        ],
        "q8": [
            "image": "オクラ",
            "answer": "okura",
            "opt1": "negi",
            "opt2": "pi-man",
            "opt3": "okura",
            "opt4": "kyu-ri",
            "description": "This picture is「okura」"
        ],
        "q9": [
            "image": "おでん",
            "answer": "oden",
            "opt1": "oden",
            "opt2": "potohu",
            "opt3": "tikuzenni",
            "opt4": "nabe",
            "description": "This picture is「oden」"
        ],
        "q10": [
            "image": "おにぎり",
            "answer": "onigiri",
            "opt1": "onigiri",
            "opt2": "okayu",
            "opt3": "sushi",
            "opt4": "cha-hanr",
            "description": "This picture is「onigiri」"
        ],
        "q11": [
            "image": "オムライス",
            "answer": "omuraisu",
            "opt1": "omuraisu",
            "opt2": "cha-han",
            "opt3": "tamanegi",
            "opt4": "ringo",
            "description": "This picture is「omuraisu」"
        ],
        "q12": [
            "image": "お好み焼き",
            "answer": "okonoiyaki",
            "opt1": "okonomiyaki",
            "opt2": "tamagoyaki",
            "opt3": "sukiyaki",
            "opt4": "cha-han",
            "description": "This picture is「okonomiyaki」"
        ],
        "q13": [
            "image": "お弁当",
            "answer": "obentou",
            "opt1": "obentou",
            "opt2": "onigiri",
            "opt3": "udon",
            "opt4": "oseti",
            "description": "This picture is「obentou」"
        ],
        "q14": [
            "image": "かき",
            "answer": "kaki",
            "opt1": "kaki",
            "opt2": "mikan",
            "opt3": "itigo",
            "opt4": "tamao",
            "description": "This picture is「kaki」"
        ],
        "q15": [
            "image": "かき氷",
            "answer": "kakigoori",
            "opt1": "kakigoori",
            "opt2": "aisukuri-mu",
            "opt3": "itgo",
            "opt4": "haroharo",
            "description": "This picture is「kakigoori」"
        ],
        "q16": [
            "image": "かに",
            "answer": "kani",
            "opt1": "kani",
            "opt2": "ebi",
            "opt3": "tomato",
            "opt4": "miso",
            "description": "This picture is「kani」"
        ],
        "q17": [
            "image": "かぼちゃ",
            "answer": "kabocha",
            "opt1": "kabotya",
            "opt2": "pi-man",
            "opt3": "meron",
            "opt4": "remon",
            "description": "This picture is「kabocha」"
        ],
        "q18": [
            "image": "キウイ",
            "answer": "kiwi",
            "opt1": "kiwi",
            "opt2": "meron",
            "opt3": "kyu-ri",
            "opt4": "suika",
            "description": "This picture is「kiwi」"
        ],
        "q19": [
            "image": "きのこ",
            "answer": "kinoko",
            "opt1": "kinoko",
            "opt2": "kuri",
            "opt3": "tamago",
            "opt4": "dango",
            "description": "This picture is「kinoko」"
        ],
        "q20": [
            "image": "きゅうり",
            "answer": "kyu-ri",
            "opt1": "kyu-ri",
            "opt2": "tamanegi",
            "opt3": "kiwi",
            "opt4": "pi-man",
            "description": "This picture is「kyu-ri」"
        ],
        "q21": [
            "image": "寿司",
            "answer": "sushi",
            "opt1": "kani",
            "opt2": "tamago",
            "opt3": "sushi",
            "opt4": "kinoko",
            "description": "This picture is「sushi」"
        ],
        "q22": [
            "image": "寿司",
            "answer": "sushi",
            "opt1": "kani",
            "opt2": "tamago",
            "opt3": "sushi",
            "opt4": "kinoko",
            "description": "This picture is「sushi」"
        ],
        "q23": [
            "image": "さくらんぼ",
            "answer": "sakuranbo",
            "opt1": "sakuranbo",
            "opt2": "ringo",
            "opt3": "itigo",
            "opt4": "kinoko",
            "description": "This picture is「sakuranbo」"
        ],
        "q24": [
            "image": "さつまいも",
            "answer": "satsumaimo",
            "opt1": "jyagaimo",
            "opt2": "satsumaimo",
            "opt3": "renkon",
            "opt4": "kabocha",
            "description": "This picture is「satsumaimo」"
        ],
        "q25": [
            "image": "サラダ",
            "answer": "sarada",
            "opt1": "sarada",
            "opt2": "negi",
            "opt3": "ninjin",
            "opt4": "kinoko",
            "description": "This picture is「sarada」"
        ],
        "q26": [
            "image": "じゃがいも",
            "answer": "jyagaimo",
            "opt1": "jyagaimo",
            "opt2": "satumaimo",
            "opt3": "tskoyaki",
            "opt4": "to-hu",
            "description": "This picture is「jyagaimo」"
        ],
        "q27": [
            "image": "スイカ",
            "answer": "suika",
            "opt1": "suika",
            "opt2": "meron",
            "opt3": "iruka",
            "opt4": "bo-ru",
            "description": "This picture is「suika」"
        ],
        "q28": [
            "image": "そば",
            "answer": "soba",
            "opt1": "soba",
            "opt2": "yakisoba",
            "opt3": "udon",
            "opt4": "motusnabe",
            "description": "This picture is「soba」"
        ],
        "q29": [
            "image": "たけのこ",
            "answer": "takenoko",
            "opt1": "takenoko",
            "opt2": "kinoko",
            "opt3": "shiitake",
            "opt4": "satsumaimo",
            "description": "This picture is「takenoko」"
        ],
        "q30": [
            "image": "たこ焼き",
            "answer": "takoyaki",
            "opt1": "takoyaki",
            "opt2": "okonimiyaki",
            "opt3": "taiyaki",
            "opt4": "mizutaki",
            "description": "This picture is「takoyaki」"
        ],
        "q31": [
            "image": "チーズ",
            "answer": "chi-zu",
            "opt1": "chi-zu",
            "opt2": "himitsu",
            "opt3": "sensu",
            "opt4": "mimizuz",
            "description": "This picture is「chi-zu」"
        ],
        "q32": [
            "image": "チャーハン",
            "answer": "cha-han",
            "opt1": "cha-han",
            "opt2": "akachan",
            "opt3": "misoshiru",
            "opt4": "onigiri",
            "description": "This picture is「cha-han」"
        ],
        "q33": [
            "image": "チョコレート",
            "answer": "chocore-to",
            "opt1": "chocore-to",
            "opt2": "gyuunyuu",
            "opt3": "aisukuri-mu",
            "opt4": "konnyaku",
            "description": "This picture is「aisukuri-mu」"
        ],
        "q34": [
            "image": "とうもろこし",
            "answer": "toumorokoshi",
            "opt1": "toumorokoshi",
            "opt2": "poppuko-n",
            "opt3": "shinbunshi",
            "opt4": "satoukibi",
            "description": "This picture is「toumorokoshi」"
        ],
        "q35": [
            "image": "ドーナツ",
            "answer": "do-natsu",
            "opt1": "do-nastu",
            "opt2": "pi-man",
            "opt3": "ta-ban",
            "opt4": "aisukuri-mu",
            "description": "This picture is「do-natsu」"
        ],
        "q36": [
            "image": "トマト",
            "answer": "tomato",
            "opt1": "tomato",
            "opt2": "tamago",
            "opt3": "tokei",
            "opt4": "kyu-ri",
            "description": "This picture is「tomato」"
        ],
        "q37": [
            "image": "なし",
            "answer": "nashi",
            "opt1": "nashi",
            "opt2": "ari",
            "opt3": "okashi",
            "opt4": "ringo",
            "description": "This picture is「nashi」"
        ],
        "q38": [
            "image": "ニンジン",
            "answer": "ninjin",
            "opt1": "ninjin",
            "opt2": "ningen",
            "opt3": "kyu-ri",
            "opt4": "go-ya",
            "description": "This picture is「ninjin」"
        ],
        "q39": [
            "image": "ねぎ",
            "answer": "negi",
            "opt1": "negi",
            "opt2": "tamanegi",
            "opt3": "asuparagasu",
            "opt4": "pi-man",
            "description": "This picture is「negi」"
        ],
        "q40": [
            "image": "パイナップル",
            "answer": "painappuru",
            "opt1": "painappuru",
            "opt2": "mango",
            "opt3": "itigo",
            "opt4": "meron",
            "description": "This picture is「painappuru」"
        ],
        "q41": [
            "image": "パスタ",
            "answer": "pasuta",
            "opt1": "pasuta",
            "opt2": "udon",
            "opt3": "soba",
            "opt4": "pan",
            "description": "This picture is「pasuta」"
        ],
        "q42": [
            "image": "はちみつ",
            "answer": "hatimitsu",
            "opt1": "hatimitsu",
            "opt2": "satou",
            "opt3": "gyunyu",
            "opt4": "shio",
            "description": "This picture is「hatimitsu」"
        ],
        "q43": [
            "image": "バナナ",
            "answer": "banana",
            "opt1": "mango",
            "opt2": "suika",
            "opt3": "itigo",
            "opt4": "nori",
            "description": "This picture is「banana」"
        ],
        "q44": [
            "image": "ピーマン",
            "answer": "pi-man",
            "opt1": "kyu-ri",
            "opt2": "go-ya",
            "opt3": "suika",
            "opt4": "pi-man",
            "description": "This picture is「pi-man」"
        ],
        "q45": [
            "image": "ピザ",
            "answer": "piza",
            "opt1": "piza",
            "opt2": "hiza",
            "opt3": "hiji",
            "opt4": "hijiki",
            "description": "This picture is「piza」"
        ],
        "q46": [
            "image": "ぶどう",
            "answer": "budou",
            "opt1": "budou",
            "opt2": "mango",
            "opt3": "tamago",
            "opt4": "remon",
            "description": "This picture is「budou」"
        ],
        "q47": [
            "image": "プリン",
            "answer": "purin",
            "opt1": "purin",
            "opt2": "ke-ki",
            "opt3": "panke-ki",
            "opt4": "takoyaki",
            "description": "This picture is「purin」"
        ],
        "q48": [
            "image": "ブロッコリー",
            "answer": "burokkori-",
            "opt1": "burokkori-",
            "opt2": "hourensou",
            "opt3": "kyabetsu",
            "opt4": "retasu",
            "description": "This picture is「burokkori-」"
        ],
        "q49": [
            "image": "ほうれん草",
            "answer": "hourensou",
            "opt1": "hourensou",
            "opt2": "kabu",
            "opt3": "kyu-ri",
            "opt4": "go-ya",
            "description": "This picture is「hourensou」"
        ],
        "q50": [
            "image": "マンゴー",
            "answer": "mango",
            "opt1": "mango",
            "opt2": "itigo",
            "opt3": "dango",
            "opt4": "moti",
            "description": "This picture is「mango」"
        ],
        "q51": [
            "image": "みかん",
            "answer": "mikan",
            "opt1": "ikura",
            "opt2": "mikan",
            "opt3": "uni",
            "opt4": "itigo",
            "description": "This picture is「mikan」"
        ],
        "q52": [
            "image": "メロン",
            "answer": "meron",
            "opt1": "meron",
            "opt2": "tamago",
            "opt3": "kabotya",
            "opt4": "suika",
            "description": "This picture is「meron」"
        ],
        "q53": [
            "image": "もち",
            "answer": "mochi",
            "opt1": "mochi",
            "opt2": "momo",
            "opt3": "kinako",
            "opt4": "ika",
            "description": "This picture is「mochi」"
        ],
        "q54": [
            "image": "もも",
            "answer": "momo",
            "opt1": "momo",
            "opt2": "moti",
            "opt3": "negi",
            "opt4": "mori",
            "description": "This picture is「momo」"
        ],
        "q55": [
            "image": "ヨーグルト",
            "answer": "yo-guruto",
            "opt1": "yo-guruto",
            "opt2": "tamago",
            "opt3": "yakuruto",
            "opt4": "mango",
            "description": "This picture is「yo-guruto」"
        ],
        "q56": [
            "image": "ラーメン",
            "answer": "ra-men",
            "opt1": "cha-han",
            "opt2": "yakisoba",
            "opt3": "udon",
            "opt4": "takoyaki",
            "description": "This picture is「ra-men」"
        ],
        "q57": [
            "image": "りんご",
            "answer": "ringo",
            "opt1": "ringo",
            "opt2": "mango",
            "opt3": "tamago",
            "opt4": "itigo",
            "description": "This picture is「ringo」"
        ],
        "q58": [
            "image": "レモン",
            "answer": "remon",
            "opt1": "remon",
            "opt2": "meron",
            "opt3": "neon",
            "opt4": "mango",
            "description": "This picture is「remon」"
        ],
        "q59": [
            "image": "レンコン",
            "answer": "renkon",
            "opt1": "ikura",
            "opt2": "banana",
            "opt3": "uni",
            "opt4": "kyu-ri",
            "description": "This picture is「renkon」"
        ],
        "q60": [
            "image": "わさび",
            "answer": "wasabi",
            "opt1": "wasabi",
            "opt2": "amai",
            "opt3": "karashi",
            "opt4": "soba",
            "description": "This picture is「wasabi」"
        ],
        "q61": [
            "image": "茄子",
            "answer": "nasubi",
            "opt1": "nasubi",
            "opt2": "retasu",
            "opt3": "renkon",
            "opt4": "remon",
            "description": "This picture is「nasubi」"
        ],
        "q62": [
            "image": "貝",
            "answer": "kai",
            "opt1": "kai",
            "opt2": "ika",
            "opt3": "tako",
            "opt4": "nori",
            "description": "This picture is「kai」"
        ],
        "q63": [
            "image": "牛乳",
            "answer": "gyuunyuu",
            "opt1": "gyuunyuu",
            "opt2": "yakisoba",
            "opt3": "gyu-don",
            "opt4": "soba",
            "description": "This picture is「gyuunyuu」"
        ],
        "q64": [
            "image": "玉ねぎ",
            "answer": "tamanegi",
            "opt1": "tamanegi",
            "opt2": "negi",
            "opt3": "tamago",
            "opt4": "dango",
            "description": "This picture is「tamanegi」"
        ],
        "q65": [
            "image": "刺身",
            "answer": "sashimi",
            "opt1": "sashimi",
            "opt2": "sushi",
            "opt3": "udon",
            "opt4": "soba",
            "description": "This picture is「sashimi」"
        ],
        "q66": [
            "image": "寿司",
            "answer": "sushi",
            "opt1": "sashimi",
            "opt2": "sushi",
            "opt3": "nashi",
            "opt4": "soba",
            "description": "This picture is「sushi」"
        ],
        "q67": [
            "image": "大根",
            "answer": "daikon",
            "opt1": "daikon",
            "opt2": "renkon",
            "opt3": "tamanegi",
            "opt4": "nasubi",
            "description": "This picture is「daikon」"
        ],
        "q68": [
            "image": "団子",
            "answer": "dango",
            "opt1": "dango",
            "opt2": "itigo",
            "opt3": "mango",
            "opt4": "tamago",
            "description": "This picture is「dango」"
        ],
        "q69": [
            "image": "天ぷら",
            "answer": "tenpura",
            "opt1": "karaage",
            "opt2": "tukudani",
            "opt3": "udon",
            "opt4": "soba",
            "description": "This picture is「tenpura」"
        ],
        "q70": [
            "image": "唐揚げ",
            "answer": "karaage",
            "opt1": "karaage",
            "opt2": "tenpura",
            "opt3": "kani",
            "opt4": "tonkotsu",
            "description": "This picture is「karaage」"
        ],
        "q71": [
            "image": "豆腐",
            "answer": "to-hu",
            "opt1": "to-hu",
            "opt2": "tamago",
            "opt3": "negi",
            "opt4": "ringo",
            "description": "This picture is「to-hu」"
        ],
        "q72": [
            "image": "肉",
            "answer": "niku",
            "opt1": "niku",
            "opt2": "negi",
            "opt3": "kani",
            "opt4": "ebi",
            "description": "This picture is「niku」"
        ],
        "q73": [
            "image": "納豆",
            "answer": "nattou",
            "opt1": "nattou",
            "opt2": "tamago",
            "opt3": "kinoko",
            "opt4": "ringo",
            "description": "This picture is「nattou」"
        ],
        "q74": [
            "image": "白ご飯",
            "answer": "shirogohan",
            "opt1": "satsumaimo",
            "opt2": "jyagaimo",
            "opt3": "kani",
            "opt4": "hopurensou",
            "description": "This picture is「shirogohan」"
        ],
        "q75": [
            "image": "卵",
            "answer": "tamago",
            "opt1": "mango",
            "opt2": "tamago",
            "opt3": "itigo",
            "opt4": "dango",
            "description": "This picture is「tamago」"
        ],
        "q76": [
            "image": "えび",
            "answer": "ebi",
            "opt1": "ebi",
            "opt2": "tamago",
            "opt3": "kani",
            "opt4": "ringo",
            "description": "This picture is「ebi」"
        ],
        "q77": [
            "image": "タピオカ",
            "answer": "tapioka",
            "opt1": "tapioka",
            "opt2": "takenoko",
            "opt3": "tanabata",
            "opt4": "takowasa",
            "description": "This picture is「tapioka」"
        ],
        "q78": [
            "image": "ケーキ",
            "answer": "ke-ki",
            "opt1": "ke-ki",
            "opt2": "kukki-",
            "opt3": "kani",
            "opt4": "pan",
            "description": "This picture is「ke-ki」"
        ],
        "q79": [
            "image": "えのき",
            "answer": "enoki",
            "opt1": "enoki",
            "opt2": "kinoko",
            "opt3": "enogu",
            "opt4": "tamago",
            "description": "This picture is「enoki」"
        ],
        "q80": [
            "image": "かぶ",
            "answer": "kabu",
            "opt1": "ebi",
            "opt2": "kinoko",
            "opt3": "enogu",
            "opt4": "tamago",
            "description": "This picture is「enoki」"
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


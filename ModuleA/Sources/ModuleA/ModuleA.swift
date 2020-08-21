import UIKit
import ControllerCenter

/**
 标识符 ModuleA
 参数
    - parameter backgroundColor:背景颜色
 */
public class ModuleA: UIViewController, Module {
    public static func make(_ parameter: [String : Any]) -> Module {
        let moduleA = ModuleA()
        moduleA.backgroundColor = parameter["backgroundColor"] as? UIColor
        return moduleA
    }
    
    public static var identifier: String = "ModuleA"
    private var backgroundColor:UIColor?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = self.backgroundColor
    }
}

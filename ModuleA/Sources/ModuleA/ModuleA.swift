import UIKit
import ControllerCenter

/**
 标识符 ModuleA
 参数
    - parameter backgroundColor:背景颜色
 */
public class ModuleA: UIViewController, ModifyModule {
    public static func make(_ modify: Modify) -> ModifyModule? {
        let moduleA = ModuleA()
        if let backgroundColor:UIColor = modify.get(globaleOptionalParameter: "backgroundColor") {
            moduleA.backgroundColor = backgroundColor
        }
        return moduleA
    }
    
    public static var identifier: String = "ModuleA"
    private var backgroundColor:UIColor?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = self.backgroundColor
    }
}

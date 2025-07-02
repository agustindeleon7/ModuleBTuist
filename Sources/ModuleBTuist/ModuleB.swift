import Foundation
import ModuleCTuist

public final class ModuleB {
    public static func sayHelloFromB() {
        print("Hello from ModuleB!")
        ModuleC.sayHello()
    }
}

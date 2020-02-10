import Foundation

struct LTBL_swift_hello_world {
    var text = "Hello, World!"
}

/**
 * @brief Different states the LTBL device can be in.
 */
enum LTBLState: String {
    case LTBL_UNKNOWN_STATE = "unknown"
    case LTBL_ON = "on"
    case LTBL_OFF = "off"
}

fileprivate func parseState(pStr: String) -> LTBLState {
    let lMatch = pStr.range(of: #"State (ON|OFF)"#, options: .regularExpression)

    if(nil != lMatch) {
        switch(pStr[lMatch!]) {
        case "State ON":
            return LTBLState.LTBL_ON
        case "State OFF":
            return LTBLState.LTBL_OFF
        default:
            return LTBLState.LTBL_UNKNOWN_STATE
        }
    } else {
        return LTBLState.LTBL_UNKNOWN_STATE
    }
}

/**
 * @class This class represents a LTBL device.
 */
class LTBLDevice {
    var state: LTBLState = LTBLState.LTBL_UNKNOWN_STATE;
    var IPAddr: String?;

    func getHomePage() -> Void {
        let url = URL(string: "http://" + IPAddr!)!
        let urlSession: URLSession = URLSession.shared;
        let urlSessionTask: URLSessionDataTask = urlSession.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in
                print("[DEBUG] <LTBLDevice::getHomePage> Data = ", data as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Response = ", response as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Error = ", error as Any)
            });

        urlSessionTask.resume();
    }

    func toggle() {
        //
    }

    func switchState(pState: LTBLState) {
        //
    }

    func turnOn() {
        let url = URL(string: "http://" + IPAddr! + "/on")!
        let urlSession: URLSession = URLSession.shared;
        let urlSessionTask: URLSessionDataTask = urlSession.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in
                print("[DEBUG] <LTBLDevice::getHomePage> Data = ", data as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Response = ", response as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Error = ", error as Any)
            });

        urlSessionTask.resume();
    }

    func turnOff() {
        let url = URL(string: "http://" + IPAddr! + "/off")!
        let urlSession: URLSession = URLSession.shared;
        let urlSessionTask: URLSessionDataTask = urlSession.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in
                print("[DEBUG] <LTBLDevice::getHomePage> Data = ", data as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Response = ", response as Any)
                print("[DEBUG] <LTBLDevice::getHomePage> Error = ", error as Any)
            });

        urlSessionTask.resume();
    }
}

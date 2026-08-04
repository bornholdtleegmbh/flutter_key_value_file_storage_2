import Flutter
import UIKit

public class FlutterKeyValueFileStoragePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "com.icapps.flutter_key_value_file_storage",
      binaryMessenger: registrar.messenger()
    )
    let instance = FlutterKeyValueFileStoragePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard call.arguments is [String: Any] else {
      result(FlutterError(code: "error", message: "data or format error", details: nil))
      return
    }

    result(FlutterError(code: "error", message: "unknown method", details: nil))
  }
}

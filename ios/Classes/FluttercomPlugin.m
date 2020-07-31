#import "FluttercomPlugin.h"
#if __has_include(<fluttercom/fluttercom-Swift.h>)
#import <fluttercom/fluttercom-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttercom-Swift.h"
#endif

@implementation FluttercomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttercomPlugin registerWithRegistrar:registrar];
}
@end

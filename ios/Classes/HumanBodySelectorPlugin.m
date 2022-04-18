#import "HumanBodySelectorPlugin.h"
#if __has_include(<human_body_selector/human_body_selector-Swift.h>)
#import <human_body_selector/human_body_selector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "human_body_selector-Swift.h"
#endif

@implementation HumanBodySelectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHumanBodySelectorPlugin registerWithRegistrar:registrar];
}
@end

#import "MultipartSupportPlugin.h"
#if __has_include(<multipart_support/multipart_support-Swift.h>)
#import <multipart_support/multipart_support-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "multipart_support-Swift.h"
#endif

@implementation MultipartSupportPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMultipartSupportPlugin registerWithRegistrar:registrar];
}
@end

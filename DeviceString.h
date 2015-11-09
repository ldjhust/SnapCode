#import <Foundation/Foundation.h>

@interface DeviceKind : NSObject

/**
 判断用户设备的硬件类型
 
 return: 表示硬件类型的字符串，如"iPhone 5"
 */
+ (NSString *)deviceString;

@end

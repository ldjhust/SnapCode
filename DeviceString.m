#import "DeviceKind.h"
#import <sys/utsname.h>

@implementation DeviceKind

+ (NSString *)deviceString {
  struct utsname systemInfo;
  
  uname(&systemInfo);
  
  NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
  
  if ([deviceString isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
  if ([deviceString isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
  if ([deviceString isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
  if ([deviceString isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
  if ([deviceString isEqualToString:@"iPhone3,3"])    return @"Verizon iPhone 4";
  if ([deviceString isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
  if ([deviceString isEqualToString:@"iPhone5,1"])    return @"iPhone 5 (GSM)";
  if ([deviceString isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
  if ([deviceString isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
  if ([deviceString isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
  if ([deviceString isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
  if ([deviceString isEqualToString:@"iPhone8,1"])    return @"iPhone 6s Plus";
  if ([deviceString isEqualToString:@"iPhone8,2"])    return @"iPhone 6s";
  if ([deviceString isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
  if ([deviceString isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
  if ([deviceString isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
  if ([deviceString isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
  if ([deviceString isEqualToString:@"iPod5,1"])      return @"iPod Touch 5G";
  if ([deviceString isEqualToString:@"iPad1,1"])      return @"iPad";
  if ([deviceString isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
  if ([deviceString isEqualToString:@"iPad2,2"])      return @"iPad 2 (GSM)";
  if ([deviceString isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
  if ([deviceString isEqualToString:@"iPad2,4"])      return @"iPad 2 (WiFi)";
  if ([deviceString isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
  if ([deviceString isEqualToString:@"iPad2,6"])      return @"iPad Mini (GSM)";
  if ([deviceString isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
  if ([deviceString isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPad3,3"])      return @"iPad 3 (GSM)";
  if ([deviceString isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
  if ([deviceString isEqualToString:@"iPad3,5"])      return @"iPad 4 (GSM)";
  if ([deviceString isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
  if ([deviceString isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
  if ([deviceString isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
  if ([deviceString isEqualToString:@"iPad4,4"])      return @"iPad Mini 2G (WiFi)";
  if ([deviceString isEqualToString:@"iPad4,5"])      return @"iPad Mini 2G (Cellular)";
  if ([deviceString isEqualToString:@"iPad5,1"])      return @"iPad Mini 4 (WiFi)";
  if ([deviceString isEqualToString:@"iPad5,2"])      return @"iPad Mini 4 (Cellular)";
  if ([deviceString isEqualToString:@"iPad6,8"])      return @"iPad Pro";
  if ([deviceString isEqualToString:@"i386"])         return @"Simulator";
  if ([deviceString isEqualToString:@"x86_64"])       return @"Simulator";
  
  return @"I don't konw";
}

@end

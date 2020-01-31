#import <sys/utsname.h>
#import <Foundation/NSString.h>
 
struct utsname systemInfo;
uname(&systemInfo);

NSString *device = @(systemInfo.machine);
   
%hook CAMCaptureCapabilities
   -(BOOL)isBackDualSupported {                    
       if([device isEqualToString:@"iPhone8,1"] || [device isEqualToString:@"iPhone8,4"] || [device isEqualToString:@"iPhone9,1"] || [device isEqualToString:@"iPhone9,3"] ||[ device isEqualToString:@"iPhone10,1"] || [device isEqualToString:@"iPhone10,4"]){ 
          return YES;
          }
   }
   -(BOOL)isFrontPortraitModeSupported {
       if([device isEqualToString:@"iPhone8,1"] || [device isEqualToString:@"iPhone8,4"] || [device isEqualToString:@"iPhone9,1"] || [device isEqualToString:@"iPhone9,3"] ||[ device isEqualToString:@"iPhone10,1"] || [device isEqualToString:@"iPhone10,4"]){ 
          return NO;
          }
   }
   -(BOOL)isBackPortraitModeSupported {
       if([device isEqualToString:@"iPhone8,1"] || [device isEqualToString:@"iPhone8,4"] || [device isEqualToString:@"iPhone9,1"] || [device isEqualToString:@"iPhone9,3"] ||[ device isEqualToString:@"iPhone10,1"] || [device isEqualToString:@"iPhone10,4"]){ 
          return NO;
          }
   }
  -(BOOL)deviceSupportsCTM {
       return YES;
       }
%end
%hook CAMFlipButton 
   -(BOOL)_useCTMAppearance {
       return YES;
       }
%end

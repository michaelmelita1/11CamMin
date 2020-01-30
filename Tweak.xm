#import <sys/utsname.h>  
struct utsname systemInfo
uname(&systemInfo)

NSString*device = @(systemInfo.machine)

switch (n) {
        case 1:
            [device isEqualToString:@"iPhone8,1"]
            break;
        case 2:
            [device isEqualToString:@"iPhone8,2"]
            break;
        case 3:
            [device isEqualToString:@"iPhone8,4"]
            break;
        case 4:
             [device isEqualToString:@"iPhone9,1"]
            break;
        case 5:
            [device isEqualToString:@"iPhone9,3"]
            break;
        case 6:
             [device isEqualToString:@"iPhone10,1"]
            break;
        case 7:
            [device isEqualToString:@"iPhone10,4"]
            break;
    }

%hook CAMCaptureCapabilities 
  if (n) return 1 || 2 || 3 || 4 || 5 || 6 || 7 {
   -(BOOL)isBackDualSupported {
   return YES;
   }
   -(BOOL)isFrontPortraitModeSupported{
   return NO;
   }
   -(BOOL)isBackPortraitModeSupported {
   return NO;
   }
  }
%end
%hook CAMFlipButton 
-(BOOL)_useCTMAppearance {
    return YES;
}
%end

 

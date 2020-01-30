#import <sys/utsname.h>

struct utsname systemInfo;
uname(&systemInfo);  

NSString *device = @(systemInfo.machine);

%hook CAMCaptureCapabilities 
  -(BOOL)isBackDualSupported {//Enables Zoom Slider on Single Cam Devices
   if([device isEqualToString:@"iPhone10,6"]{ 
   return YES;
      }
   }
   -(BOOL)isFrontPortraitModeSupported {
   if([device isEqualToString:@"iPhone10,6"]{ 
   return NO;
      }
   }
   -(BOOL)isBackPortraitModeSupported {
   if([device isEqualToString:@"iPhone10,6"]{ 
   return NO;
      }
   }
  -(BOOL)deviceSupportsCTM { //Enables iPhone 11 Style Zoom Slider
   return YES;
   }
%end
%hook CAMFlipButton 
   -(BOOL)_useCTMAppearance {  //iPhone 11 Flip Button
   return YES;
   }
%end

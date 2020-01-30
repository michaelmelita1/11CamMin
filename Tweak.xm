#import <sys/utsname.h>
#import <Foundation/NSString.h>

%ctor {
struct utsname systemInfo;
uname(&systemInfo);
}
%hook CAMCaptureCapabilities
  NSString *device = @(systemInfo.machine);
  -(BOOL)isBackDualSupported {.                   //Enables Zoom Slider on Single Cam Devices
   if([device isEqualToString:@"iPhone10,6"]){ 
   return YES;
      }
   }
   -(BOOL)isFrontPortraitModeSupported {
   if([device isEqualToString:@"iPhone10,6"]){ 
   return NO;
      }
   }
   -(BOOL)isBackPortraitModeSupported {
   if([device isEqualToString:@"iPhone10,6"]){ 
   return NO;
      }
   }
  -(BOOL)deviceSupportsCTM {                     //Enables iPhone 11 Style Zoom Slider
   return YES;
   }
%end
%hook CAMFlipButton 
   -(BOOL)_useCTMAppearance {                    //iPhone 11 Flip Button
   return YES;
   }
%end


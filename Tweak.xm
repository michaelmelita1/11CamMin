#import <sys/utsname.h>

struct utsname systemInfo; 
uname(&systemInfo);  

NSString *device = @(systemInfo.machine);

%hook CAMCaptureCapabilities 
  -(BOOL)isBackDualSupported {
      if([device isEqualToString:@"iPhone10,6"]
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

 

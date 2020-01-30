#import <sys/utsname.h>  

struct utsname systemInfo; 
uname(&systemInfo);  

NSString *device = @(systemInfo.machine);

%hook CAMCaptureCapabilities 
  if([device isEqualToString:@"iPhone10,6"]{
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

 

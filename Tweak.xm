#import <sys/utsname.h>
#import <Foundation/NSString.h>

%ctor {
   struct utsname systemInfo;
   uname(&systemInfo);
}
%hook CAMCaptureCapabilities
   NSString *device = @(systemInfo.machine);
   -(BOOL)isBackDualSupported {                    
       if([device isEqualToString:@"iPhone8,3"]){ 
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
  -(BOOL)deviceSupportsCTM {
       return YES;
       }
%end
%hook CAMFlipButton 
   -(BOOL)_useCTMAppearance {
       return YES;
       }
%end


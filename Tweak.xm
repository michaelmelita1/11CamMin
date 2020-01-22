#import <UIKit/UIKit.h>
#include <sys/utsname.h>

%hook CAMCaptureCapabilities 
-(BOOL)deviceSupportsCTM {
    return YES;
}
if   -(BOOL)isBackDualSupported {
      return YES;
      }


else 
        -(BOOL)isBackDualSupported {
        return YES;
        }
        -(BOOL)isFrontPortraitModeSupported{
        return NO;
        }
        -(BOOL)isBackPortraitModeSupported {
        return NO;
        }

%end
%hook CAMFlipButton 
-(BOOL)_useCTMAppearance {
    return YES;
}
%end

 

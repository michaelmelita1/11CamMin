#import <UIKit/UIKit.h>
#include <sys/utsname.h>

%hook CAMCaptureCapabilities 
-(BOOL)deviceSupportsCTM {
    return YES;
}
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

 

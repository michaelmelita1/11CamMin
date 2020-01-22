#import <UIKit/UIKit.h>
#include <sys/utsname.h>

%hook CAMCaptureCapabilities 
-(BOOL)deviceSupportsCTM {
    return YES;
}
%end
%hook CAMFlipButton 
-(BOOL)_useCTMAppearance {
    return YES;
}
%end

 

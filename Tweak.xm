#import <sys/utsname.h>

%hook CAMCaptureCapabilities 
  -(BOOL)deviceSupportsCTM { //Enables iPhone 11 Zoom Slider
   return YES;
   }

  -(BOOL)isBackDualSupported { //Enables Zoom Slider on Single Cam Devices
   return YES;
   }
   -(BOOL)isFrontPortraitModeSupported {
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

 

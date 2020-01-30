static BOOL isDualCam;

%hook CAMCaptureCapabilities 
  -(BOOL)deviceSupportsCTM { //Enables iPhone 11 Zoom Slider
   return YES;
   }
  -(BOOL)isBackDualSupported { 
   return isDualCam = %orig;
   if(!isDualCam){ //Enables Zoom Slider on Single Cam Devices
   return YES;
      }
   }
   -(BOOL)isFrontPortraitModeSupported {
   return NO;
   }
   -(BOOL)isBackPortraitModeSupported {
   return NO;
   }
 }
%end
%hook CAMFlipButton 
   -(BOOL)_useCTMAppearance {  //iPhone 11 Flip Button
   return YES;
   }
%end

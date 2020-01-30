static bool isDualCam;

%hook CAMCaptureCapabilities 
  -(BOOL)isBackDualSupported {//Enables Zoom Slider on Single Cam Devices
   return isDualCam = %orig;
   if(isDualCam == NO){ 
   return YES;
      }
   else{
   return YES;
      }
   }
   -(BOOL)isFrontPortraitModeSupported {
   if(isDualCam == NO){ 
   return NO;
      }
   else{
   return %orig;
      }
   }
   -(BOOL)isBackPortraitModeSupported {
   if(isDualCam == NO){ 
   return NO;
      }
   else{
   return %orig;
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


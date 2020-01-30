%hook CAMCaptureCapabilities 
if (isBackDualSupported) return false {
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

 

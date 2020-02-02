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
%hook CAMViewfinderViewController 
-(BOOL)_shouldUseZoomControlInsteadOfSlider {
    return YES;
}
%end

%hook CAMCaptureCapabilities 
-(long long) zoomDialStyle {
		return 1;
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

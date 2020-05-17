%hook CAMCaptureCapabilities 
-(long long) zoomDialStyle {
		return 1;
}
-(bool)overContentFlipButtonSupported {
		return YES;
}
%end
%hook CAMViewfinderViewController 
-(BOOL)_shouldUseZoomControlInsteadOfSlider {
    return YES;
}
%end
%hook CAMBottomBar
-(double) _opacityForBackgroundStyle:(long long)arg1 {
		return 0;
		return 0;
}
%end

#line 1 "Tweak.x"
@import UIKit;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class XMSoundPatchImageViewFourB; @class XMSoundPatchVideoBView; 
static XMSoundPatchImageViewFourB* (*_logos_orig$_ungrouped$XMSoundPatchImageViewFourB$initWithFrame$)(_LOGOS_SELF_TYPE_INIT XMSoundPatchImageViewFourB*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static XMSoundPatchImageViewFourB* _logos_method$_ungrouped$XMSoundPatchImageViewFourB$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMSoundPatchImageViewFourB*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static XMSoundPatchVideoBView* (*_logos_orig$_ungrouped$XMSoundPatchVideoBView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT XMSoundPatchVideoBView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static XMSoundPatchVideoBView* _logos_method$_ungrouped$XMSoundPatchVideoBView$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMSoundPatchVideoBView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.x"


static XMSoundPatchImageViewFourB* _logos_method$_ungrouped$XMSoundPatchImageViewFourB$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMSoundPatchImageViewFourB* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED {
	return nil;
}





static XMSoundPatchVideoBView* _logos_method$_ungrouped$XMSoundPatchVideoBView$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMSoundPatchVideoBView* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED {
	return nil;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$XMSoundPatchImageViewFourB = objc_getClass("XMSoundPatchImageViewFourB"); { MSHookMessageEx(_logos_class$_ungrouped$XMSoundPatchImageViewFourB, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$XMSoundPatchImageViewFourB$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$XMSoundPatchImageViewFourB$initWithFrame$);}Class _logos_class$_ungrouped$XMSoundPatchVideoBView = objc_getClass("XMSoundPatchVideoBView"); { MSHookMessageEx(_logos_class$_ungrouped$XMSoundPatchVideoBView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$XMSoundPatchVideoBView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$XMSoundPatchVideoBView$initWithFrame$);}} }
#line 18 "Tweak.x"

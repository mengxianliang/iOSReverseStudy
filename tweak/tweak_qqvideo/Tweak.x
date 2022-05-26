
// %hook QNBPlayerVideoAdsViewController

// - (id)initWithEventProxy:(id)arg1 withPlayerInfo:(id)arg2 withParentViewController:(id)arg3 withPageViewController:(id)arg4 withAddToParenViewControllerNow:(_Bool)arg5 {
// 	return nil;
// }

// - (id)initWithEventProxy:(id)arg1 withPlayerInfo:(id)arg2 withParentViewController:(id)arg3 withParentEventViewController:(id)arg4 withAddToParenViewControllerNow:(_Bool)arg5 {
// 	return nil;
// }

// - (id)initWithEventProxy:(id)arg1 withPlayerInfo:(id)arg2 withParentViewController:(id)arg3 withAddToParenViewControllerNow:(_Bool)arg4 {
// 	return nil;
// }

// - (id)initWithEventProxy:(id)arg1 withPlayerInfo:(id)arg2 withParentViewController:(id)arg3 withParentEventViewController:(id)arg4 {
// 	return nil;
// }

// - (id)initWithEventProxy:(id)arg1 withPlayerInfo:(id)arg2 withParentViewController:(id)arg3 {
// 	return nil;
// }

// %end

// %hook QADRootViewController

// - (id)initWithEventProxy:(id)arg1 withPlayAdInfo:(id)arg2 withParentViewController:(id)arg3 {
// 	return nil;
// }

// %end

// %hook QADGestureViewController

// - (id)initWithEventProxy:(id)arg1 withPlayAdInfo:(id)arg2 withParentViewController:(id)arg3 {
// 	return nil;
// }

// %end

// %hook QADRichMediaAdViewController

// - (id)initWithEventProxy:(id)arg1 withPlayAdInfo:(id)arg2 withParentViewController:(id)arg3 {
// 	return nil;
// }

// %end

// %hook QADMediaAdViewController

// - (id)initWithEventProxy:(id)arg1 withPlayAdInfo:(id)arg2 withParentViewController:(id)arg3 {
// 	return nil;
// }

// %end

%hook QADPlayAdInfo 

- (id)initWithEventProxy:(id)arg1 scrrenMode:(long long)arg2 scenesType:(long long)arg3 {
	return nil;
}

%end

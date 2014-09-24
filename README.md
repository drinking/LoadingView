#LoadingView
A animation loading view with a running train and bubbles come out randomly

[![](demo)](https://github.com/drinking/LoadingView/blob/master/demoview.jpg)


## Usage
```
DKProgressView *pv = [DKProgressView showAtView:self.view];
dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
	// Do something...
	dispatch_async(dispatch_get_main_queue(), ^{
		[pv hide];
	});
});
```

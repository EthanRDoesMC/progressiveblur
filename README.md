#  Progressive Blur

In iOS 12, Apple added `_UIProgressiveBlurPresentationController` to UIKit. I noticed it a while back but had no idea how to implement it, lol. Recently, after learning how modal presentations work, I realized I would be able to finally see what this is. While grabbing a header for it, I happened to find that it's used in `TVMLKit`, which would explain why the animation is so fancy.

The transition delegate, `_UIProgressiveBlurContextController`, is all you need. It has a property `blurStyle` of type `UIBlurEffect.Style` -- this defaults to `.extraLight = 0`, but I decided to default to `.systemMaterial` in the demo app instead.

I wrote a convenience extension for `UIBlurEffect.Style` that adds `CaseIterable` conformity and proper description support. Feel free to use it for your own applications.

The transition looks best if the presented view controller's view is transparent. The demo app is set up like this.

For further research, delve into runtime headers for the four `_UIProgressiveBlur` headers or check out TVMLKit's `TVModalPresenter`.

This transition looks really good. It's a shame that it's private, as it's quite an outstanding example of just how good the UIKit team is. Maybe someday they'll make it public.

Enjoy!

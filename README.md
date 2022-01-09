#  Progressive Blur

In iOS 12, Apple added `_UIProgressiveBlurPresentationController` to UIKit. I noticed it a while back but had no idea how to implement it, lol. Recently, after learning how modal presentations work, I realized I would be able to finally see what this is. While grabbing a header for it, I happened to find that it's used in `TVMLKit`, which would explain why the animation is so fancy.

The transition delegate, `_UIProgressiveBlurContextController`, is all you need. It has a property/ivar called `blurStyle`. It seems to have values up to `2`. I suspect the type is something like:

- `.extraLight`
- `.light`
- `.dark`

The transition looks best if the presented view controller's view is transparent. The demo app provides this as an option.

For further research, delve into runtime headers for the four `_UIProgressiveBlur` headers or check out TVMLKit's `TVModalPresenter`.

Enjoy!

## Popover animation bug

When resizing a NSPopover, the popover's mask seems to be stretched during the animation, clipping the content when resizing the popover to a taller height.

The amount of clipping seems to be related to the animation duration + the amount of height change. For example, if the popover changes > 100pts in .25 seconds, the effect is noticeable.

Example of clipped content during animation:


![](https://raw.githubusercontent.com/adamwulf/popover-mask-resize/46fb6a7354ee5803f6a9b13dd67fb0967b94d2c6/popover-mask-resize/example.png)
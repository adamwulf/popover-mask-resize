## Popover animation bug

When resizing a NSPopover, the popover's mask seems to be stretched during the animation, clipping the content when resizing the popover to a taller height.

The amount of clipping seems to be related to the animation duration + the amount of height change. For example, if the popover changes > 100pts in .25 seconds, the effect is noticeable.

Example of clipped content during animation:


![](https://raw.githubusercontent.com/adamwulf/popover-mask-resize/f1c2827f7ed0fe6cb570c8de2448036ed7f5958e/popover-mask-resize/example.png)
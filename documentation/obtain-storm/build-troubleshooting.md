---
title: Build Troubleshooting
layout: default
documentation: true
category_weight: 7
categories: [Obtain Storm]
---

<h1>Build Troubleshooting</h1>

{% include includes/toc.html %}

## Dependencies
- In general, if issues occur installing certain dependencies of Storm make sure to also consult the documentation of the corresponding dependency.

### CArL
- When manually installing CArL make sure you are using the [Carl-storm] (https://github.com/stormchecker/carl-storm) repository which is compatible with the latest Storm versions.

## OS specific issues
We list common issues for specific operating systems.

### <i class="fa-brands fa-apple" aria-hidden="true"></i> macOS

- Make sure to have Xcode and its command line utilities installed:
  ``` console
  $ xcode-select --install
  ```

- Start Xcode at least once such that required components might be installed automatically.

## File an issue

If you encounter problems when building (or using) Storm, feel free to [contact us]({{ '/about.html#people' | relative_url }}) by writing a mail to
- <i class="fas fa-envelope" aria-hidden="true"></i> support ```at``` stormchecker.org.

You may also open an [issue on GitHub](https://github.com/stormchecker/storm/issues){:target="_blank"}. In any case, please provide as much information on your problem as you possibly can. For example, when [the build step](build.html#build-step) fails, please provide the output of `cmake` in the configuration step and details about your operating system, your machine and any other information that is potentially relevant.

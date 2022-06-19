# Jekyll Phone Protect [![Gem Version](https://badge.fury.io/rb/jekyll-phone-protect.png)](http://badge.fury.io/rb/jekyll-phone-protect)

> Phone protection liquid filter for Jekyll

Jekyll Phone Protect is an phone protection liquid filter which can be used to obfuscate `mailto:` links to protect an phone address from spam bots.

ℹ️ See the original Jekyll Email Protect [here](https://github.com/vwochnik/jekyll-email-protect).

## Installation

This plugin is available as a [RubyGem][ruby-gem].

Add this line to your application's `Gemfile`:

```
gem 'jekyll-phone-protect'
```

And then execute the `bundle` command to install the gem.

Alternatively, you can also manually install the gem using the following command:

```
$ gem install jekyll-phone-protect
```

After the plugin has been installed successfully, add the following lines to your `_config.yml` in order to tell Jekyll to use the plugin:

```
gems:
- jekyll-phone-protect
```

## Getting Started

In your markup, simply use the `encode_phone` liquid filter made available through this plugin:

```
{{ '+1-123-456-7890' | encode_phone }}
```

The above code will yield `+%31-%31%32%33-%34%35%36-%37%38%39%30`. Only use this filter within the `href` attribute of a given link.

## Example

The following example shows how this plugin can be used to protect the `site`'s phone address:

```
<a href="mailto:{{ site.phone | encode_phone }}" title="Contact me">Contact me</a>
```

# Contribute

Fork this repository, make your changes and then issue a pull request. If you find bugs or have new ideas that you do not want to implement yourself, file a bug report.

# Copyright

Copyright (c) 2015 Vincent Wochnik and Jacob Valdez.

License: MIT

[ruby-gem]: https://rubygems.org/gems/jekyll-phone-protect

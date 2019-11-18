# Solarized Flat Theme

Flat custom UI themes for Sublime Text 2 and Sublime Text 3.

Project site: [https://github.com/circlecrystal/solarized-flat-theme](https://github.com/circlecrystal/solarized-flat-theme)

## Design

Solarized Flat is elegant.

It pursues the minimalist design --- without being over-simplified.
![](https://raw.githubusercontent.com/circlecrystal/solarized-flat-theme/master/SolarizedFlatDarkPython.png)
![](https://raw.githubusercontent.com/circlecrystal/solarized-flat-theme/master/SolarizedFlatLightPython.png)

## Installation

Solarized Flat theme is designed to work with the latest development builds of Sublime Text, including [Sublime Text 2](http://www.sublimetext.com/dev) and [Sublime Text 3](http://www.sublimetext.com/3dev).

### Using Sublime Package Control

If you are using Will Bond's excellent [Sublime Package Control](http://wbond.net/sublime_packages/package_control), you can easily install Solarized Flat Theme via the `Package Control: Install Package` menu item. The Flat Theme package is listed as `Theme - Solarized Flat` in the packages list.

### Using Git

Alternatively, if you are a git user, you can install the theme and keep up to date by cloning the repo directly into your `Packages` directory in the Sublime Text application settings area.

You can locate your Sublime Text `Packages` directory by using the menu item `Preferences -> Browse Packages...`.

While inside the `Packages` directory, clone the theme repository using the command below:

    git clone https://github.com/circlecrystal/solarized-flat-theme "Theme - Solarized Flat"


## Activating the theme

* Open your User Settings Preferences file `Sublime Text -> Preferences -> Settings - User`
* Add (or update) your theme entry to be  `"theme": "Solarized Flat.sublime-theme"`

**Example Sublime Text 2/3 User Settings**

    {
        "theme": "Solarized Flat Dark.sublime-theme",
        "color_scheme": "Packages/Theme - Solarized Flat/Solarized Flat Dark.tmTheme"
    }

or

    {
        "theme": "Solarized Flat Light.sublime-theme",
        "color_scheme": "Packages/Theme - Solarized Flat/Solarized Flat Light.tmTheme"
    }

**Recommended Preferences Settings**

	{
		"always_show_minimap_viewport": true
	}

## Code Font

The code font shown in the screenshot is Source Code Pro.

## License

Solarized Flat Theme is licensed under the [Creative Commons Attribution-ShareAlike 3.0 License](http://creativecommons.org/licenses/by-sa/3.0/). You are free to share and remix the theme, however please abide by the license terms when doing so.

The following details apply to the Creative Commons license "author specified" components:

* Attribution example: Based on Solarized Flat Theme by Willen Hahn

* Naming guidelines: If you create and distribute a derivative theme, please give your theme a unique and original name that does not directly include "Solarized Flat Theme" (or a close variant) in the main project title, repo name or Package Control name.
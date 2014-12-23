# Sidebar folder and file icon fix

Sublime Text 3 Build 3065 introduced folder and file icons in sidebar. They become
redundant in Soda Theme since Soda now has folder icons too. In Soda Dark Theme,
the icons get even worse. Those black outlined icons become invisible under the
dark background, and create a large "space" between the arrows and folder/file
names.

A post on StackOverFlow addresses this issue by changing the theme file, and set
icon's margin to nothing.

http://stackoverflow.com/questions/25487263/hide-icons-in-sidebar

Changes to be made in the folling files:

```
PackageResourceViewer:Open Resource > Theme - Default > Default.sublime-theme
PackageResourceViewer:Open Resource > Theme - Soda > Soda Dark.sublime-theme
PackageResourceViewer:Open Resource > Theme - Soda > Soda Light.sublime-theme
PackageResourceViewer:Open Resource > Theme - Soda > Soda Dark 3.sublime-theme
PackageResourceViewer:Open Resource > Theme - Soda > Soda Light 3.sublime-theme
```

Add the following theme config to those files:

```json
{
    "class": "icon_file_type",
    "content_margin": [0,0]
},
{
    "class": "icon_folder",
    "content_margin": [0,0]
},
{
    "class": "icon_folder_loading",
    "content_margin": [0,0]
},
{
    "class": "icon_folder_dup",
    "content_margin": [0, 0]
}
```

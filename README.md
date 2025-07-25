# Nergis theme

Nergis is a [Material Design](https://material.io) theme made for the Cinnamon desktop environment (often used by Linux Mint).
It is based on [Orchis-theme](https://github.com/vinceliuice/Orchis-theme)

![screenshot](images/screenshot.png?raw=true)

<details>
  <summary><strong>Show More Images</strong></summary>

  <img src="images/edit-mode.png?raw=true" alt="Dark theme" width="300"/>
  <img src="images/workspace-overview.png?raw=true" alt="Dark theme" width="300"/>
  <img src="images/window-overview.png?raw=true" alt="Dark theme" width="300"/>
  <img src="images/vertical-panel.png?raw=true" alt="Dark theme" width="300"/>
</details>


## Why Nergis?

The reason why I built Nergis was because I found out that the original orchis theme had some limitations in cinnamon. Including:

* No theming in panel edit mode
* Not built for vertical panels
* No light panels
* Sound applet is broken (merged into orchis and got fixed)
* Workspace naming have bugs (merged into orchis and got fixed)
* Colors don't match the Mint-Y themes
* Window selectors don't match the theme color

That is why I decided create this fork with all of these changes including some new additions:

* window snapping preview now match the custom color
* New elements (toggle switches, workspace addition buttons, trash-icons, close button)
* More extensive use of the user selected colors. (like notifications submenu's).

It is helpful to know that most of these options are probably not in orchis on purpose. Hence, the fork.

## Installation

**The easiest way to install is through the "themes" application in Cinnamon. Although there is no customization this way.**

### Manual Installation

> Note: It is required to have `git` installed locally. You can install it through your software manager or terminal.

Once you have installed git, you can clone this repo.

Once you have cloned it, get inside the cloned folder structure. Then you can run the following command in the terminal (Add additional options explained below if you want customization):

```sh
./install.sh # It will install using the default options.
```

`./install.sh` also allows the following options:

```
OPTIONS:
  -d, --dest DIR          Specify destination directory (Default: $HOME/.themes)
  -n, --name NAME         Specify theme name (Default: Nergis)

  -t, --theme VARIANT     Specify theme color variant(s) [default|purple|pink|red|orange|yellow|green|teal|grey|all] (Default: blue)

```

  <img src="images/colors.png?raw=true" alt="themes"/>

```
  -c, --color VARIANT     Specify color variant(s) [standard|light|dark] (Default: All variants)
                          Standard variant will have a dark panel and light popup elements.
                          Light and dark variants will only have light and dark elements respectively. 

```
  | Dark | Standard | Light |
  |:----:|:--------:|:-----:|
  | <img src="images/Dark.png?raw=true" alt="Dark theme" height="120"/> | <img src="images/Standard.png?raw=true" alt="Standard theme" height="120"/> | <img src="images/Light.png?raw=true" alt="Light theme" height="120"/> |

```

  -s, --size VARIANT      Specify size variant [standard|compact] (standard)
                          Compact mode will have smaller popup elements.

```
  | Standard | Compact |
  |:----:|:--------:|
  | <img src="images/comfortable.png?raw=true" alt="Standard size" height="120"/> | <img src="images/compact.png?raw=true" alt="Compact size" height="120"/> |

```

  --tweaks                Specify versions for tweaks [transparent|black|primary|(nord/dracula)] (Options can mix)
        1. transparent        Make some elements semi-transparent (panels, popup menus, applets etc.)

        2. black              Dark elements will be pitch black. Recommended for people who need/want a color contrast.
                              Won't work on light elements.
        
        3. primary            Use primary theme color on other elements too (like radio button, toggles and osd's)
        
        4. [nord|dracula]     Nord/dracula colorscheme themes (nord and dracula can not mix use!)

  --round                 Change theme round corner border-radius [Input the px value you want] (Suggested: 2px < value < 16px)
                          1. 3px
                          2. 4px
                          3. 5px
                          ...
                          13. 15px


  -r, --remove, -u, --uninstall         Uninstall/Remove installed themes

  -h, --help              Show help
```
## Tweaks

### transparent

  | Default | Transparent |
  |:----:|:--------:|
  | <img src="images/solid.png?raw=true" alt="solid" height="120"/> | <img src="images/transparent.png?raw=true" alt="transparent" height="120"/> |

### black

  | Default | Black |
  |:----:|:--------:|
  | <img src="images/compact.png?raw=true" alt="default color" height="120"/> | <img src="images/black.png?raw=true" alt="black" height="120"/> |

### Primary

Note that primary doesn't just affect the media OSD. Toggle elements and buttons are affected as well.

  | Default | Primary |
  |:----:|:--------:|
  | <img src="images/No-primary.png?raw=true" alt="No primary" height="120"/> | <img src="images/primary.png?raw=true" alt="Primary" height="120"/> |


### [Nord | Dracula]


  | Default | Dracula | Nord |
  |:----:|:--------:|:---:|
  | <img style="border-radius: 7px;" src="images/no-tweak.png?raw=true" alt="No tweak" height="120"/> | <img style="border-radius: 7px;" src="images/dracula.png?raw=true" alt="dracula" height="120"/> | <img style="border-radius: 7px;" src="images/nord.png?raw=true" alt="nord" height="120"/> |


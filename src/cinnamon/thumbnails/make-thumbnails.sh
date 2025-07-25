#! /usr/bin/env bash

# Change to the script's directory
cd "$(dirname "$0")" || exit

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Teal' '-Grey'; do
  for type in '' '-Nord' '-Dracula'; do
    case "$theme" in
      '')
        theme_color_dark='#3281EA'
        theme_color_light='#1A73E8'
        ;;
      -Purple)
        theme_color_dark='#a679ec'
        theme_color_light='#bd93f9'
        ;;
      -Pink)
        theme_color_dark='#f04cab'
        theme_color_light='#ff79c6'
        ;;
      -Red)
        theme_color_dark='#f44d4d'
        theme_color_light='#ff5555'
        ;;
      -Orange)
        theme_color_dark='#f3562f'
        theme_color_light='#ff7139'
        ;;
      -Yellow)
        theme_color_dark='#e8f467'
        theme_color_light='#f1fa8c'
        ;;
      -Green)
        theme_color_dark='#4CAF50'
        theme_color_light='#66BB6A'
        ;;
      -Teal)
        theme_color_dark='#20eed9'
        theme_color_light='#50fae9'
        ;;
      -Grey)
        theme_color_dark='#464646'
        theme_color_light='#DDDDDD'
        ;;
    esac

    if [[ "$type" == '-Nord' ]]; then
      panel_dark='#1c1f26'
      case "$theme" in
        '')
          theme_color_dark='#5e81ac'
          theme_color_light='#89a3c2'
          ;;
        -Purple)
          theme_color_dark='#b57daa'
          theme_color_light='#c89dbf'
          ;;
        -Pink)
          theme_color_dark='#cd7092'
          theme_color_light='#dc98b1'
          ;;
        -Red)
          theme_color_dark='#c35b65'
          theme_color_light='#d4878f'
          ;;
        -Orange)
          theme_color_dark='#d0846c'
          theme_color_light='#dca493'
          ;;
        -Yellow)
          theme_color_dark='#e4b558'
          theme_color_light='#eac985'
          ;;
        -Green)
          theme_color_dark='#82ac5d'
          theme_color_light='#a0c082'
          ;;
        -Teal)
          theme_color_dark='#63a6a5'
          theme_color_light='#83b9b8'
          ;;
        -Grey)
          theme_color_dark='#3a4150'
          theme_color_light='#d9dce3'
          ;;
      esac
    fi

    if [[ "$type" == '-Dracula' ]]; then
      panel_dark='#1c1e26'
      case "$theme" in
        '')
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Purple)
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -Pink)
          theme_color_dark='#f04cab'
          theme_color_light='#ff79c6'
          ;;
        -Red)
          theme_color_dark='#f44d4d'
          theme_color_light='#ff5555'
          ;;
        -Orange)
          theme_color_dark='#f8a854'
          theme_color_light='#ffb86c'
          ;;
        -Yellow)
          theme_color_dark='#ffe100'
          theme_color_light='#f1fa8c'
          ;;
        -Green)
          theme_color_dark='#4be772'
          theme_color_light='#50fa7b'
          ;;
        -Teal)
          theme_color_dark='#20eed9'
          theme_color_light='#50fae9'
          ;;
        -Grey)
          theme_color_dark='#3c3f51'
          theme_color_light='#d9dae3'
          ;;
      esac
    fi

    # Create a mixed-variant thumbnail
    cp -f "thumbnail.svg" "thumbnail${theme}${type}.svg"
    sed -i "s/#1A73E8/${theme_color_light}/g" "thumbnail${theme}${type}.svg"
    sed -i "s/#3281EA/${theme_color_dark}/g" "thumbnail${theme}${type}.svg"
    if [[ "$type" != '' ]]; then
      sed -i "s/#1C1C1C/${panel_dark}/g" "thumbnail${theme}${type}.svg"
    fi

    # Create a light-variant thumbnail
    cp -f "thumbnail-Light.svg" "thumbnail${theme}${type}-Light.svg"
    sed -i "s/#1A73E8/${theme_color_light}/g" "thumbnail${theme}${type}-Light.svg"
    sed -i "s/#3281EA/${theme_color_dark}/g" "thumbnail${theme}${type}-Light.svg"

    # Create a dark-variant thumbnail
    cp -f "thumbnail-Dark.svg" "thumbnail${theme}${type}-Dark.svg"
    sed -i "s/#1A73E8/${theme_color_light}/g" "thumbnail${theme}${type}-Dark.svg"
    sed -i "s/#3281EA/${theme_color_dark}/g" "thumbnail${theme}${type}-Dark.svg"
    if [[ "$type" != '' ]]; then
      sed -i "s/#1C1C1C/${panel_dark}/g" "thumbnail${theme}${type}-Dark.svg"
    fi
  done
done

echo -e "DONE!"
for font in `/bin/ls theme/nerd-fonts/*.ttf`; do
    file_name=`basename $font`
    font_name=`echo $font | awk -F'.' '{print$2}' | sed 's/NerdFont-Regular//'`;

    echo "@font-face {" > ./theme/font-css/${font_name}.css
    echo "  font-family: \"${font_name}\";" >> ./theme/font-css/${font_name}.css
    echo "  src: url(\"/themes_custom/Nerd%20Fonts/nerd-fonts/${file_name}\");" >> ./theme/font-css/${font_name}.css
    echo "}" >> ./theme/font-css/${font_name}.css
    echo "" >> ./theme/font-css/${font_name}.css
    echo "* {" >> ./theme/font-css/${font_name}.css
    echo "  font-family: \"${font_name}\" !important;" >> ./theme/font-css/${font_name}.css
    echo "}" >> ./theme/font-css/${font_name}.css
done

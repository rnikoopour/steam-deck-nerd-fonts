for font in `/bin/ls theme/nerd-fonts/*.ttf`; do
    file_name=`basename $font`
    font_name=`echo $font | awk -F'.' '{print$2}' | sed 's/NerdFont-Regular//'`;

    echo "\"${font_name}\": {"
    echo "\"font-css/${font_name}.css\": [\"SP\", \"MainMenu\", \"QuickAcces\"]"
    echo "},"
done

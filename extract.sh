#!/bin/bash

basic_latin=U+0020-007E
latin_1_supplement=U+00A0-00FF
latin_extended_a=U+0100-017F
latin_extended_b=U+0180-024F
latin_extended_additional=U+1E00-1EFF
general_punctuation=U+2000-206F
currency_symbols=U+20A0-20C1

all_codes="${basic_latin},${latin_1_supplement},${latin_extended_a},${latin_extended_b},${latin_extended_additional},${general_punctuation},${currency_symbols}"

for font in `/bin/ls *.ttf`; do
    echo "$font"
    pyftsubset "$font" --unicodes="${all_codes}" --output-file="reduced/reduced.$font";
done

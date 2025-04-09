
Dir="files"


for file in "$Dir"/*; do
    name=$(basename "$file")    
    char=$(echo "$name" | cut -c1 | tr '[:upper:]' '[:lower:]')

    if [[ "$char" =~ [a-z] ]]; then
        if [ ! -d "$char" ]; then
            mkdir "$char"
        fi

        mv "$file" "$char/"
    fi

done


# Output HTML boilerplate code to a file name specified by the first argument;
# Also creates an empty css file specified by second argument, and creates a blank js file specified by third argument
# If no arguments are provided, defaults to index.html, style.css, script.js
# example:
#    bp lulz mySteez demScripts
#
# creates lulz.html mySteez.css demScripts.js with appropriate links in the html doc

bp() {
    local html_name="$1"
    local css_name="$2"
    local js_name="$3"

    # check if html name argument supplied
    if [[ $html_name ]]; then
      # if so, make sure its extension is html
        [[ $html_name != *.html ]] && html_name+=.html
    else
      # otherwise, default to index.html
        html_name=index.html
    fi

    # check if css name argument supplied
    if [[ $css_name ]]; then
        css_name=$css_name
    else
      # otherwise, default to style.css
        css_name=style
    fi

    # check if js name argument supplied
    if [[ $js_name ]]; then
        js_name=$js_name
    else
      # otherwise, default to script.js
        js_name=script
    fi
    touch $css_name.css
    touch $js_name.js
    cat << EOF > "$html_name"
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="$css_name.css">
  </head>
  <body>
    <script src="$js_name.js"></script>
  </body>
</html>
EOF
}

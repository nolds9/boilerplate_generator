# Front End App Boilerplate

Generate bare bones html, css, and js files with boilerplate html from the command line

## To Use

* Copy the contents of the `bp` function in `app_boilerplate.bash` to your `bash_profile` or desired location
* Reload your `bash_profile`
* from the CLI, run `$bp` to generate an `index.html` with a standard boilerplate template, a blank `style.css`, and a blank `script.js`
* To customize the name of the files, pass in the appropriate file names in the following order `$bp html css js` as arguments to the `bp` function
  * i.e. `bp main custom app` will output the following files in the current directory: `main.html`, `custom.css`, `app.js`

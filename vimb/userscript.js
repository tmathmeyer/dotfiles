/* Script to insert various data into form fields.
 * Given data is an array of "Selector:Value" tupel.
 * ["selector:value","...:..."]
 * Example call from within vimb:
 * ::e! _vbform.fill(["input[name='login']:daniel","input[name='password']:p45w0rD"]);
 *
 * Note the double ':' in front, this tells vimb not to write the command into
 * history or the last excmd register ":. */
(function() {
    if (document.URL.indexOf('github.com') > -1) {
        window.onload = function() {
            document.body.style.fontFamily = "Impact,Charcoal,sans-serif";
        }
    }
})();

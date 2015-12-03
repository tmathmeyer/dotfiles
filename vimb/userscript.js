/* Script to insert various data into form fields.
 * Given data is an array of "Selector:Value" tupel.
 * ["selector:value","...:..."]
 * Example call from within vimb:
 * ::e! _vbform.fill(["input[name='login']:daniel","input[name='password']:p45w0rD"]);
 *
 * Note the double ':' in front, this tells vimb not to write the command into
 * history or the last excmd register ":. */
window.onload = function() {
    (function(ctx) {
        ctx.pagetest('github.com', function() {
            document.body.style.fontFamily = "Impact,Charcoal,sans-serif";
        });
        (function() {
            var inputs = document.getElementsByTagName("input");
            Object.keys(inputs).map(function(each) {
                return inputs[each];
            }).filter(function(each) {
                return each.type === 'password';
            }).forEach(function(each) {
                each.addEventListener('click', function(ev) {
                    console.log(ev);
                });
            });
        })();
    })({
        pagetest: function(page, callback, ctx) {
            if (document.URL.indexOf(page) > -1) {
                callback(document.URL, ctx);
            }
        },
        password: function(ctx) {
            var active = document.activeElement;
            if (active.nodeName == 'TEXTAREA' || active.nodeName == 'INPUT') {

            }
        }
    });
}

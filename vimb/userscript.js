window.onload = function() {
    (function(ctx) {
        ctx.pagetest('github.com', function() {
            document.body.style.fontFamily = "Impact,Charcoal,sans-serif";
        });
        ctx.pagetest('reddit.com/r/unixporn', function() {
            document.getElementById('siteTable').style.margin = "0px";
            ctx.removeElementsByClass('side');
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
        removeElementsByClass: function(className){
            var elements = document.getElementsByClassName(className);
            while(elements.length > 0){
                elements[0].parentNode.removeChild(elements[0]);
            }
        },
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

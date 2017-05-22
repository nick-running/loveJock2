Handlebars.registerHelper('isTrue', function(status, targetStr) {
    var str = '';
    if(status) {
        str = targetStr
    }
    return str
});
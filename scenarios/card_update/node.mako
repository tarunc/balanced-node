% if mode == 'definition': 
balanced.Cards.update

% else:
<%!
    import json

    def to_json( d ):
        return json.dumps( d , indent=4)
%>

var balanced_library = require('balanced-official');

var balanced = new balanced_library({
    marketplace_uri: "${ctx.marketplace_uri}",
    secret: "${ctx.api_key}"
});

balanced.Cards.update("${request.get('uri', request.get('debits_uri',''))}", { twitter: "123456789" },
		     function(err, result) {
    /* . . . */
});

% endif
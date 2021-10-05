quiet
    this script enables the zooming on the http code images
    the script is entirely written in dogescript
loud

very imageDir is 'assets/images/'
very elementImage is plz dogeument.querySelector with '.zoomed img'
very element is plz dogeument.querySelector with '.zoomed'

very statuses is obj
  100: { code: 100, message: 'Continue' },
  101: { code: 101, message: 'Switching Protocols' },
  102: { code: 102, message: 'Processing' },
  200: { code: 200, message: 'OK' },
  201: { code: 201, message: 'Created' },
  202: { code: 202, message: 'Accepted' },
  203: { code: 203, message: 'Non-Authoritative Information' },
  204: { code: 204, message: 'No Content' },
  206: { code: 206, message: 'Partial Content' },
  207: { code: 207, message: 'Multi-Status' },
  300: { code: 300, message: 'Multiple Choices' },
  301: { code: 301, message: 'Moved Permanently' },
  302: { code: 302, message: 'Found' },
  303: { code: 303, message: 'See Other' },
  304: { code: 304, message: 'Not Modified' },
  305: { code: 305, message: 'Use Proxy' },
  307: { code: 307, message: 'Temporary Redirect' },
  308: { code: 308, message: 'Permanent Redirect' },
  400: { code: 400, message: 'Bad Request' },
  401: { code: 401, message: 'Unauthorized' },
  402: { code: 402, message: 'Payment Required' },
  403: { code: 403, message: 'Forbidden' },
  404: { code: 404, message: 'Not Found' },
  405: { code: 405, message: 'Method Not Allowed' },
  406: { code: 406, message: 'Not Acceptable' },
  407: { code: 407, message: 'Proxy Authentication Required' },
  408: { code: 408, message: 'Request Timeout' },
  409: { code: 409, message: 'Conflict' },
  410: { code: 410, message: 'Gone' },
  411: { code: 411, message: 'Length Required' },
  412: { code: 412, message: 'Precondition Failed' },
  413: { code: 413, message: 'Payload Too Large' },
  414: { code: 414, message: 'Request-URI Too Long' },
  415: { code: 415, message: 'Unsupported Media Type' },
  416: { code: 416, message: 'Request Range Not Satisfiable' },
  417: { code: 417, message: 'Expectation Failed' },
  418: { code: 418, message: "I'm a teapot" },
  420: { code: 420, message: 'Enhance Your Calm' },
  421: { code: 421, message: 'Misdirected Request' },
  422: { code: 422, message: 'Unprocessable Entity' },
  423: { code: 423, message: 'Locked' },
  424: { code: 424, message: 'Failed Dependency' },
  425: { code: 425, message: 'Too Early' },
  426: { code: 426, message: 'Upgrade Required' },
  429: { code: 429, message: 'Too Many Requests' },
  431: { code: 431, message: 'Request Header Fields Too Large' },
  444: { code: 444, message: 'No Response' },
  450: { code: 450, message: 'Blocked by Windows Parental Controls' },
  451: { code: 451, message: 'Unavailable For Legal Reasons' },
  497: { code: 497, message: 'HTTP Request Sent to HTTPS Port' },
  498: { code: 498, message: 'Token expired/invalid' },
  499: { code: 499, message: 'Client Closed Request' },
  500: { code: 500, message: 'Internal Server Error' },
  501: { code: 501, message: 'Not Implemented' },
  502: { code: 502, message: 'Bad Gateway' },
  503: { code: 503, message: 'Service Unavailable' },
  504: { code: 504, message: 'Gateway Timeout' },
  506: { code: 506, message: 'Variant Also Negotiates' },
  507: { code: 507, message: 'Insufficient Storage' },
  508: { code: 508, message: 'Loop Detected' },
  509: { code: 509, message: 'Bandwidth Limit Exceeded' },
  510: { code: 510, message: 'Not Extended' },
  511: { code: 511, message: 'Network Authentication Required' },
  521: { code: 521, message: 'Web Server Is Down' },
  523: { code: 523, message: 'Origin Is Unreachable' },
  525: { code: 525, message: 'SSL Handshake Failed' },
  599: { code: 599, message: 'Network Connect Timeout Error' },
wow

such generateHttpDogeElement much id message
    very container is plz dogeument.createElement with 'div'
    container giv classList is 'doge-elements-wrapper'

    very root is plz dogeument.createElement with 'div'
    root giv classList is 'status-code-wrapper'
    root giv id is `${id}`

    quiet
        very image is plz dogeument.createElement with 'img'
        image giv classList is 'status-code-image'
        image giv src is `assets/images/${id}.png`
        plz root.append with image
    loud

    very image is plz dogeument.createElement with 'div'
    image giv classList is 'status-image'
    image giv style is `background: url(assets/images/${id}.png);`
    plz root.append with image

    very content is plz dogeument.createElement with 'div'
    content giv classList is 'content'
    plz root.append with content

    very statusCode is plz dogeument.createElement with 'div'
    statusCode giv classList is 'status-code'
    statusCode giv innerText is id
    plz content.append with statusCode

    very statusMessage is plz dogeument.createElement with 'p'
    statusMessage giv innerText is message
    plz content.append with statusMessage

    plz container.append with root
    amaze container
wow

very dogeElements = plz Object.entries with statuses&
dose map with much [key value]
  shh wow sad no multiline support 
  amaze plz generateHttpDogeElement with value.code value.message
wow&

plz console.loge with dogeElements

plz dogeElements.forEach with much element
  plz dogeument.querySelector with 'main' &
    dose append with element
wow&


such zoomEvent much e
    very image is e giv target giv parentElement giv id
    elementImage giv src is `${imageDir}${image}.png`
    element giv classList is 'zoomed'
wow

very statusCodeWrappers is plz dogeument.querySelectorAll with '.status-code-wrapper'
very statusCodeWrappersSize is statusCodeWrappers giv length

much very key as 0 next key smaller statusCodeWrappersSize next key more 1
    very entry is statusCodeWrappers levl key ;
    entry giv onclick is zoomEvent
wow


plz dogeument.querySelector with '#copy-link-button' &
    giv onclick is such copyLink
        very link is plz dogeument.querySelector with '.actual-link' &
            giv innerText
        plz navigator.clipboard.writeText with link
    wow
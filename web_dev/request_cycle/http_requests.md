** List of common HTTP status codes ** 

1. 200 OK - request successful
2. 300 Multiple Choices - requested resource has several choices but cannot be merged into one 
3. 301 Moved Permanently - requested resource has a new permanent URI
4. 302 Found - requested resource has temporary different URI
5. 304 Not Modified - condition GET requested and access is allowed, but document not modified 
6. 307 Temporary Redirect - requested resource has temporary URI 
7. 400 Bad Request - request cannot go through b/c syntax incorrect 
8. 401 Unauthorized - requires user to authenticate 
9. 403 Forbidden - server received request, but refusing to fulfill
10. 404 Not Found - request URI not found by server 
11. 410 Gone - requested resource no longer available 
12. 500 Internal Server Error - unexpected error 
13. 501 Not Implemented - server does not have functionality of request 
14. 503 Service Unavailable - unable to process HTTP request at present 
15. 550 Permission Denied - account into which user is logged in does not have permission to perform action requested 

** Differences btwn GET request and POST request ** 
1. GET - requests data from a given resource 
    * may be cached
    * may be stored in browser history
    * may be bookmarked
    * less secure; should NOT be used to send passwords or other sensitive info
    * have length limits
    * only use to retrieve data
    * easier to be hacked 
2. POST - submits data to a given resource 
    * never cached
    * never stored in browser history
    * not able to be bookmarked
    * no length limits
    * more secure b/c parameters not stored in browser history/web server logs
    * should use to send sensitive info 
    * more difficult to hack

** What is a cookie? **
Cookies are (small) pieces of data that is sent from websites to the user's computer during web browsing. They remember "stateful information" (e.g. items places in shopping cart) or user's activity (whether or not they logged in, buttons they click, which pages were visited). They may also be used to remember commonly filled out form fields (name, address, email, phone number, etc). One of the most important kinds of cookies are "authentication cookies," which communicate to the server whether the user is logged in or not. This allows the server to allow the user to access certain types of information, based on the user's authentication. Tracking cookies (like third-party cookies) are non-essential, and store long term records. Third party cookies have often been an area of differing opinion. 

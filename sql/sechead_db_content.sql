## Einträge für Header

INSERT INTO
            headertable(header_fieldname,header_kind,header_descr)
            VALUES
                  ('Access-Control-Allow-Origin','RESPONSE','tells the browser which other sites` front end JavaScript code may make requests of the page in question. unless you need to set this, the default is usually the right setting.'),
                  ('Cache-Control','REQUEST, RESPONSE','sets caching policy for different content types. any page with sensitive data (user page, customer checkout page) should be set to no-cache.'),
				  ('Cross-Origin-Embedder-Policy','RESPONSE','allows a site to prevent asets being loaded that do not grant permissions to load them via CORS or CORP'),
				  ('Cross-Origin-Opener-Policy','RESPONSE','allows a site to opt-in to Cross-Origin Isolation in the browser'),
				  ('Cross-Origin-Resource-Policy','RESPONSE','allows a resource owner to specify who can load the resource'),
				  ('Content-Security-Policy','RESPONSE','used to prevent cross site scripting  by specifying which resources are allowed to load.'),
				  ('Expect-CT','RESPONSE','allows a site to determine if they are ready for the upcoming Chrome requirements and/or enforce their CT policy.'),
				  ('Expires','RESPONSE','sets the time the cache should expire the current request. is ignored if the Cache-Control max-age header is set, so we only set it in case a naive scanner is testing for it without considering cache-control. for security purposes, we will assume that the browser should not cache anything, so we will set this to a date that always evaluates to the past.'),
				  ('Permissions-Policy','RESPONSE','new header that allows a site to control which features and APIs can be used in the browser'),
				  ('Public-Key-Pins','RESPONSE','deprecated; used to associate a specific cryptographic public key with a certain web server to decrease the risk of MITM attacks with forged certificates. it has been removed from modern browsers and is no longer supported. Use Certitifate Transparency and Expect-CT header instead. '),
				  ('Referrer-Policy','RESPONSE','new header that allows a site to control how much information the browser includes with navigations away from a document'),
				  ('Set-Cookie','RESPONSE','ensures that your cookies are sent via HTTPS (encrypted) only, and that they are not accessible via JavaScript. You can only send HTTPS cookies if your site also supports HTTPS. You should always set the following flags: Secure, HttpOnly'),
				  ('Strict-Transport-Security','RESPONSE','strengthens your implementation of TLS by getting the User Agent to enforce the use of HTTPS; tells the browser that the site should only be accessed via HTTPS - always enable when your site has HTTPS enabled. If you use subdomains, it is also recommended enforcing this on any used subdomains.'),
				  ('X-Content-Type-Options','RESPONSE','stops a browser from trying to MIME-sniff the content type and forces it to stick with the declared content-type. ensures that the MIME types set by the application are respected by browsers. this can help prevent certain types of cross site scripting bypasses. it also reduces unexpected application behavior when a browser may "guess" some kind of content incorrectly, such as when a dev labels a page "HTML" but the browser thinks it looks like JavaScript and tries to render it as JavaScript. This header ensures that the browser always respects the MIME type set by the server.'),
				  ('X-Download-Options','RESPONSE','has only one option: this is for Internet Explorer from version 8 on to instruct the browser not to open a download directly in the browser but instead to provide only the save option. the user has to first save it and then open it in an application.'),
				  ('X-Frame-Options','RESPONSE','tells the browser whether you want to allow your site to be framed or not. by preventing a browser from framing your site you can defend against attacks like clickjacking.'),
				  ('X-XSS-Protection','RESPONSE','allows devs to change the behavior of the Reflectes XSS security filters. these filters aim to detect dangerous HTML input and either prevent the site from loading or remove potentially malicious scripts.');

## Einträge für Values

INSERT INTO
            valuetable(belongs_to_header_id,fieldvalue,considered_secure,recommended_val,value_descr)
            VALUES
                  (1,'null',FALSE,FALSE,),
				  (2,'no-cache',TRUE,TRUE,),
				  (2,'no-store',TRUE,FALSE,),
				  (2,'no-transform',TRUE,FALSE,),
				  (2,'private',TRUE,FALSE,),
				  (2,'public',TRUE,FALSE,),
				  (2,'max-age',TRUE,TRUE,),
				  (2,'s-maxage',TRUE,TRUE,),
				  (3,'unsafe-none',TRUE,TRUE,),
				  (3,'require-corp',TRUE,TRUE,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
				  (,'',,),
;


### Einträge für Vulnerabilities 



### 
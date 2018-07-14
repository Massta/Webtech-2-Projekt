A small project that uses Apache Shiro to secure calls to the offered (RESTful) web services.
This example is based on example07. For any documentation on the project structure or on how to deploy the app, see the
readme of example07

----------
Shiro Configuration:

The main configuration file (shiro.ini) can be found in the presentation module under src/main/webapp/WEB-INF/shiro.ini.
It contains two realm definitions. The WT2Realm is a very basic realm that will suffice for most people who want to use
either session-based of basic authentication. The JWT realm serves as a starting point for people who want to dig
further into custom authentication mechanisms such as JSON Web Tokens.

Both realms are located in the business module. The WT2Realm extends the existing 'AuthorizingRealm' class of the Shiro
framework, so that only the two methods 'doGetAuthenticationInfo' and 'doGetAuthorizationInfo' need to be implemented,
which should return the necessary information to Shiro to perform authentication and authorization tasks. (Side note:
if no authorization is required for the web app, one may extend the 'AuthenticatingRealm' class, which only requires to
implement the 'doGetAuthenticationInfo' method)

Since the Shiro framework directly instantiates the specified realm, it will not receive a container-managed instance
(which may be desirable due to its automated transaction and injection support). Therefore the 'doGetAuthenticationInfo'
delegates the actual fetching of the authentication info to the 'DatabaseAuthenticator' class and only deals with the
programmatic lookup of a container-managed instance for this class. The 'DatabaseAuthenticator' class may then use
already known features (@Transactional, @PersistenceContext) to perform a database lookup.

As for authorization, this example grants every user with a 'ReadNewsItemPermission' permission. According to Shiro's
idea of permissions, permissions owned by a subject may imply permissions required by objects. According to the
implementation of 'ReadNewsItemPermission's implies method, it implies a 'ViewFirstFiveNewsItemsPermission' permission.
However, it does not blindly implies the requested permission, but rather calls its check-method, to actually decide on
the implication. This allows to utilize Shiro's permission-system to implement an attribute-based access control system,
because 'ViewFirstFiveNewsItemsPermission's check-method may return true or false based on arbitrary variables.

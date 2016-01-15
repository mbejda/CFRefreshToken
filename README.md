## CFRefreshToken
ColdFusion component returns an AccessToken from a Refresh Token.


### Example Usage
```
<cfset cfr =createObject("Component","cfrefreshtoken/cfRefreshToken").init(refreshToken="refreshToken",clientId="clientId",clientSecret="clientSecret",endPoint="https://accounts.google.com/o/oauth2/token")/>
<cfset token = cfr.getToken()/>
<cfdump var="#token#" abort="true"/>
```



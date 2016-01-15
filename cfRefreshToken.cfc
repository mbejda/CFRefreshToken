component {
    function init(refreshToken, clientId, clientSecret, endPoint) {
        this.refreshToken = refreshToken;
        this.clientId = clientId;
        this.clientSecret = clientSecret;
        this.endPoint = endPoint;
        return (this);
    }
    public function getToken() {
       var httpService = new http();
        httpService.setMethod("post");
        httpService.setCharset("utf-8");
        httpService.setUrl(this.endPoint);
        httpService.addParam(type = "formfield", name = "client_id", value = this.clientId);
        httpService.addParam(type = "formfield", name = "client_secret", value = this.clientSecret);
        httpService.addParam(type = "formfield", name = "refresh_token", value = this.refreshToken);
        httpService.addParam(type = "formfield", name = "grant_type", value = "refresh_token");
        var result = httpService.send().getPrefix();
        return deserializeJson(result.filecontent);
    }
}
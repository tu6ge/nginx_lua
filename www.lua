 local requestmap= ngx.req.get_uri_args();
local addr = ngx.var.remote_addr;
local redis = require("resty.redis")
local red = redis:new()
red:set_timeout(1000)
local ok, err = red:connect("redis", "6379")
if not ok then  
    ngx.say("connect to redis error : ", err)  
end
local ok, err = red:set("ip", addr)
if not ok then
    ngx.say("set ip error : ", err)
end

if(addr == "192.168.3.52") then
	ngx.say("wanghl");
end
ngx.say("hello"); 
ngx.say(addr);

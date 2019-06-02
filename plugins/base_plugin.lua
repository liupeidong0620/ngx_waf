
local waf_log = require("ngx_waf.common.log")
local Object = require("ngx_waf.lib.classic")

local BasePlugin = Object:extend()

function BasePlugin:new(name, version)
    self._name = name
    self._version = version
	waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": new")
end

function BasePlugin:get_name()
    return self._name
end

function BasePlugin:get_version()
    return self._version
end

function BasePlugin:init_worker()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": init_worker")
end

function BasePlugin:redirect()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": redirect")
end

function BasePlugin:rewrite()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": rewrite")
end

function BasePlugin:access()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": access")
end

function BasePlugin:header_filter()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": header_filter")
end

function BasePlugin:body_filter()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": body_filter")
end

function BasePlugin:log()
    waf_log.debug_log("BasePlugin executing plugin \""..self._name.."\": log")
end

return BasePlugin

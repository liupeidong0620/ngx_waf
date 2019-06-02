local _M = {}

function _M.debug_log(msg)
	ngx.log(ngx.DEBUG, msg)
end

function _M.warn_log(msg)
	ngx.log(ngx.WARN, msg)
end

function _M.error_log(msg)
	ngx.log(ngx.ERR, msg)
end

return _M

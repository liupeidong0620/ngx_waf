local json = require("ngx_waf.common.json")
local IO = require("ngx_waf.common.io")

local _M = {}

local cfg_path = "/etc/ngx_waf/waf.conf"

function _M.load(config_path)
    config_path = config_path or cfg_path
    local config_contents = IO.read_file(config_path)

    if not config_contents then
        ngx.log(ngx.ERR, "No configuration file at: ", config_path)
        os.exit(1)
    end

    local config = json.decode(config_contents)
    return config, config_path
end

return _M

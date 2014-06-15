require 'formula'

class LuaRedisParserNginxModule < Formula
  homepage 'https://github.com/openresty/lua-redis-parser'
  url 'https://github.com/openresty/lua-redis-parser/archive/v0.10.tar.gz'
  sha1 '94110dfd8acc239897a3875dd140558689709efb'

  depends_on "luajit"
  depends_on 'ngx-devel-kit'
  depends_on 'redis2-nginx-module'
  depends_on 'lua-nginx-module'

  def install
    (share+'lua-redis-parser-nginx-module').install Dir['*']
  end
end

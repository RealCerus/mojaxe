package mojaxe.cache;

import haxe.Int64;

class CacheObject<T> {

    private var obj:T;
    private var expires:Int64;

    public function new(obj:T, expiresIn:Int64) {
        this.obj = obj;
        this.expires = (((Sys.time()*1000)+expiresIn):Int64);
    }

    public function replace(newObj:T):T {
        var old = obj;
        obj = newObj;
        return old;
    }

    public function isExpired():Bool {
        return ((Sys.time()*1000):Int64) >= expires;
    }

    public inline function getObj():T {
        return obj;
    }

    public inline function getExpireTimestamp():Int64 {
        return expires;
    }

}

package mojaxe.util;

class RegexUtil {

    private function new() {
    }

    public static function fullReplace(reg:EReg, str:String, by:String):String {
        var s:String = str;
        while(reg.match(s))
            s = reg.replace(s, by);
        return s;
    }

}

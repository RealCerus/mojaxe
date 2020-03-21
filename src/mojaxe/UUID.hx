package mojaxe;

import mojaxe.util.RegexUtil;

class UUID {

    private var uuidStr:String;

    public function new(uuidStr:String) {
        this.uuidStr = uuidStr.indexOf("-") == -1 ? uuidFromNoHyphenString() : uuidStr;
    }

    private inline function uuidFromNoHyphenString():String {
        return ~/([0-9a-fA-F]{8})([0-9a-fA-F]{4})([0-9a-fA-F]{4})([0-9a-fA-F]{4})([0-9a-fA-F]+)/.replace(uuidStr, "$1-$2-$3-$4-$5");
    }

    public function toStringNoHyphen():String {
        return RegexUtil.fullReplace(~/-/, toString(), "");
    }

    public function toString():String {
        return uuidStr;
    }

}

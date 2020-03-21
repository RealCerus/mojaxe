package mojaxe.struct;

import haxe.Int64;

typedef UuidUsername = {
    var uuid:UUID;
    var username:String;
}

typedef UsernameTimestamp = {
    var username:String;
    var timestamp:Int64 = Int64.ofInt(-1);
}

typedef FullNameResponseRaw = {
    var id:String;
    var name:String;
    var legacy:Bool;
    var demo:Bool;
}

typedef FullNameResponse = mojaxe.struct.FullNameResponse;
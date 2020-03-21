package mojaxe.struct;

import haxe.Int64;

typedef UuidUsername = {
    var uuid:UUID;
    var username:String;
}

typedef UsernameChange = {
    var name:String;
    var changedToAt:Int64;
}

typedef FullNameResponseRaw = {
    var id:String;
    var name:String;
    var legacy:Bool;
    var demo:Bool;
}

//typedef FullNameResponse = mojaxe.struct.FullNameResponse;

typedef ProfilePropertyUnparsed = {
    var name:String;
    var value:String;
}

typedef ProfilePropertyRaw = {
    var timestamp:Int64;
    var profileId:String;
    var profileName:String;
    var textures:{
        SKIN: {
            url:String,
            metadata: {
                model:String
            }
        },
        CAPE: {
            url:String
        }
    };
}

typedef ProfileResponseRaw = {
    var id:String;
    var name:String;
    var properties:Array<ProfilePropertyRaw>;
}

typedef Empty = {}
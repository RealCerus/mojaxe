package mojaxe.struct;

import mojaxe.struct.Structs.FullNameResponseRaw;

class FullNameResponse {

    private var uuid:UUID;
    private var name:String;
    private var legacy:Bool;
    private var demo:Bool;

    public function new(uuid:UUID, name:String, legacy:Bool, demo:Bool) {
        this.uuid = uuid;
        this.name = name;
        this.legacy = legacy;
        this.demo = demo;
    }

    public static inline function fromJson(json:FullNameResponseRaw):FullNameResponse {
        return new FullNameResponse(new UUID(json.id), json.name, json.legacy, json.demo);
    }

    public function getUuid():UUID {
        return uuid;
    }

    public function getName():String {
        return name;
    }

    public function isLegacy():Bool {
        return legacy;
    }

    public function isDemo():Bool {
        return demo;
    }

}

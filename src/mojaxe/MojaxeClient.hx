package mojaxe;

import mojaxe.struct.Structs.UsernameTimestamp;
import mojaxe.struct.Structs.UuidUsername;
import haxe.Int64;
import mojaxe.status.ApiStatus;

interface MojaxeClient {

    public function getServiceStatuses():Response<Map<String, ApiStatus>>;

    public function getUuid(username:String, ?at:Int64):Response<UuidUsername>; //Int64.ofInt(Std.int((Sys.time()*1000)));

    public function getNameHistory(uuid:UUID):Response<Array<UsernameTimestamp>>;

}

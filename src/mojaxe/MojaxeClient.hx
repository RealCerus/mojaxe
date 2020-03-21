package mojaxe;

import mojaxe.struct.Structs.Empty;
import mojaxe.struct.FullNameResponse;
import mojaxe.struct.Structs.UsernameChange;
import haxe.Int64;
import mojaxe.status.ApiStatus;
import mojaxe.struct.Structs.UuidUsername;

interface MojaxeClient {

    public function getServiceStatuses():Response<Map<String, ApiStatus>>;

    public function getUuid(username:String, ?at:Int64):Response<UuidUsername>; //Int64.ofInt(Std.int((Sys.time()*1000)));

    public function getNameHistory(uuid:UUID):Response<Array<UsernameChange>>;

    public function getUuid(username:String):Response<FullNameResponse>;

    public function getUuids(usernames:Array<String>):Response<Array<FullNameResponse>>;

    public function changeSkin(uuid:UUID, authToken:String, skinUrl:String, model:String = ""):Response<Empty>;

    public function resetSkin(uuid:UUID, authToken:String):Response<Empty>;

}

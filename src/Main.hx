import mojaxe.struct.Structs.ProfilePropertyRaw;
import haxe.Json;
import haxe.crypto.Base64;
class Main {
    static public function main() {
        var d = Base64.decode("eyJ0aW1lc3RhbXAiOjE1ODQ4MDMyMDAwMDQsInByb2ZpbGVJZCI6IjA2ZjhjM2NjYTNjNTRiNDhiYzZkZDNlZTg5NjNmMmFmIiwicHJvZmlsZU5hbWUiOiJDZXJ1c18iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY0NjMzYTdkMzc5Zjc1NWEzYjUwMjk0MjM3YWE3OTNhZmM2M2JmODk0NzI2ZTMxOTg1YzlmYzUwOGVmNWMxZSJ9fX0=").toString();
        var prop:ProfilePropertyRaw = Json.parse(d);
        try {
            trace(prop.textures.CAPE.url);
        } catch (s:String) {
            trace("Error - "+s);
        }
    }
}

package mojaxe.status;

enum ApiStatus {
    GREEN(desc:String = "No issues");
    YELLOW(desc:String = "Some issues");
    RED(desc:String = "Service unavailable");
}
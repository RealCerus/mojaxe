package mojaxe;

class Response<T> {

    private var obj:T;
    private var error:String;

    private function new(obj:T, error:String) {
        this.obj = obj;
        this.error = error;
    }

    public static function constructError<T>(error:String):Response<T> {
        return new Response<T>(null, error);
    }

    public static function constructSuccess<T>(obj:T):Response<T> {
        return new Response<T>(obj, null);
    }

    public function hasError():Bool {
        return error != null;
    }

    public function isSuccess():Bool {
        return obj != null && !hasError();
    }

    public function getObj():T {
        return obj;
    }

    public function getError():String {
        return error;
    }

}

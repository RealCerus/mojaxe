package mojaxe.cache;

class Cache<T:CacheObject<T>> {

    private var curr:T;
    private var updateFunc:Void -> T;

    public function new(curr:T, updateFunc:Void -> T = null) {
        this.curr = curr;
        this.updateFunc = updateFunc;
    }

    public function update() {
        if (updateFunc != null)
            curr = updateFunc();
    }

    public function getCurrent(update:Bool = false):T {
        if (curr.isExpired() && update && updateFunc != null)
            curr = updateFunc();
        return curr;
    }

}

package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CancelHandler extends NotCompleted {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UserSupplied implements CancelHandler {
        public final Function1 j;

        public UserSupplied(Function1 function1) {
            this.j = function1;
        }

        @Override // kotlinx.coroutines.CancelHandler
        public final void b(Throwable th) {
            this.j.b(th);
        }

        public final String toString() {
            return "CancelHandler.UserSupplied[" + this.j.getClass().getSimpleName() + '@' + DebugStringsKt.a(this) + ']';
        }
    }

    void b(Throwable th);
}

package kotlinx.coroutines;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CompletedContinuation<R> {
    public final Object a;
    public final CancelHandler b;
    public final Function3 c;
    public final Object d;
    public final Throwable e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ CompletedContinuation(Object obj, CancelHandler cancelHandler, Function3 function3, Throwable th, int i) {
        this(obj, cancelHandler, function3, (Object) null, r7);
        Throwable th2;
        cancelHandler = (i & 2) != 0 ? null : cancelHandler;
        function3 = (i & 4) != 0 ? null : function3;
        if ((i & 16) != 0) {
            th2 = null;
        } else {
            th2 = th;
        }
    }

    public static CompletedContinuation a(CompletedContinuation completedContinuation, CancelHandler cancelHandler, Throwable th, int i) {
        Object obj = completedContinuation.a;
        if ((i & 2) != 0) {
            cancelHandler = completedContinuation.b;
        }
        CancelHandler cancelHandler2 = cancelHandler;
        Function3 function3 = completedContinuation.c;
        Object obj2 = completedContinuation.d;
        if ((i & 16) != 0) {
            th = completedContinuation.e;
        }
        return new CompletedContinuation(obj, cancelHandler2, function3, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompletedContinuation)) {
            return false;
        }
        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
        if (Intrinsics.a(this.a, completedContinuation.a) && Intrinsics.a(this.b, completedContinuation.b) && Intrinsics.a(this.c, completedContinuation.c) && Intrinsics.a(this.d, completedContinuation.d) && Intrinsics.a(this.e, completedContinuation.e)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int i = 0;
        Object obj = this.a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        int i2 = hashCode * 31;
        CancelHandler cancelHandler = this.b;
        if (cancelHandler == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = cancelHandler.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Function3 function3 = this.c;
        if (function3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = function3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Object obj2 = this.d;
        if (obj2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = obj2.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Throwable th = this.e;
        if (th != null) {
            i = th.hashCode();
        }
        return i5 + i;
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public CompletedContinuation(Object obj, CancelHandler cancelHandler, Function3 function3, Object obj2, Throwable th) {
        this.a = obj;
        this.b = cancelHandler;
        this.c = function3;
        this.d = obj2;
        this.e = th;
    }
}

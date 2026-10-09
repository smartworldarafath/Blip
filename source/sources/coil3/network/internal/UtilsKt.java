package coil3.network.internal;

import coil3.network.NetworkResponseBody;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import okio.Buffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r6v3, types: [okio.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(NetworkResponseBody networkResponseBody, ContinuationImpl continuationImpl) {
        UtilsKt$readBuffer$1 utilsKt$readBuffer$1;
        int i;
        NetworkResponseBody networkResponseBody2;
        Throwable th;
        Buffer buffer;
        if (continuationImpl instanceof UtilsKt$readBuffer$1) {
            UtilsKt$readBuffer$1 utilsKt$readBuffer$12 = (UtilsKt$readBuffer$1) continuationImpl;
            int i2 = utilsKt$readBuffer$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                utilsKt$readBuffer$12.p = i2 - Integer.MIN_VALUE;
                utilsKt$readBuffer$1 = utilsKt$readBuffer$12;
                Object obj = utilsKt$readBuffer$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = utilsKt$readBuffer$1.p;
                if (i == 0) {
                    if (i == 1) {
                        buffer = utilsKt$readBuffer$1.n;
                        networkResponseBody2 = utilsKt$readBuffer$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                AutoCloseableKt.a(networkResponseBody2, th);
                                throw th3;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    try {
                        ?? obj2 = new Object();
                        utilsKt$readBuffer$1.m = networkResponseBody;
                        utilsKt$readBuffer$1.n = obj2;
                        utilsKt$readBuffer$1.p = 1;
                        networkResponseBody.B0(obj2);
                        if (Unit.a == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        networkResponseBody2 = networkResponseBody;
                        buffer = obj2;
                    } catch (Throwable th4) {
                        networkResponseBody2 = networkResponseBody;
                        th = th4;
                        throw th;
                    }
                }
                AutoCloseableKt.a(networkResponseBody2, null);
                return buffer;
            }
        }
        utilsKt$readBuffer$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = utilsKt$readBuffer$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = utilsKt$readBuffer$1.p;
        if (i == 0) {
        }
        AutoCloseableKt.a(networkResponseBody2, null);
        return buffer;
    }
}

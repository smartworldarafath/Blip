package androidx.room;

import defpackage.qg;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransactorKt {
    public static final Object a(PooledConnection pooledConnection, String str, ContinuationImpl continuationImpl) {
        Object c = pooledConnection.c(str, new qg(11), continuationImpl);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}

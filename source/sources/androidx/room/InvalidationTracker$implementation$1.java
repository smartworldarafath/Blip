package androidx.room;

import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class InvalidationTracker$implementation$1 extends FunctionReferenceImpl implements Function1<Set<? extends Integer>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ((Set) obj).getClass();
        InvalidationTracker invalidationTracker = (InvalidationTracker) this.k;
        ReentrantLock reentrantLock = invalidationTracker.d;
        reentrantLock.lock();
        try {
            List X = CollectionsKt.X(invalidationTracker.c.values());
            reentrantLock.unlock();
            Iterator it = X.iterator();
            if (!it.hasNext()) {
                return Unit.a;
            }
            ((ObserverWrapper) it.next()).getClass();
            throw null;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}

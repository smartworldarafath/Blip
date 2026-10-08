package coil3.disk;

import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.Okio;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.disk.DiskLruCache$launchCleanup$1", f = "DiskLruCache.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DiskLruCache$launchCleanup$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ DiskLruCache n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$launchCleanup$1(DiskLruCache diskLruCache, Continuation continuation) {
        super(2, continuation);
        this.n = diskLruCache;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DiskLruCache$launchCleanup$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DiskLruCache$launchCleanup$1(this.n, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        DiskLruCache diskLruCache = this.n;
        synchronized (diskLruCache.q) {
            if (diskLruCache.v && !diskLruCache.w) {
                try {
                    diskLruCache.R();
                } catch (IOException unused) {
                    diskLruCache.x = true;
                }
                try {
                    if (diskLruCache.s >= 2000) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        diskLruCache.X();
                    }
                } catch (IOException unused2) {
                    diskLruCache.y = true;
                    diskLruCache.t = new RealBufferedSink(Okio.a());
                }
                return Unit.a;
            }
            return Unit.a;
        }
    }
}

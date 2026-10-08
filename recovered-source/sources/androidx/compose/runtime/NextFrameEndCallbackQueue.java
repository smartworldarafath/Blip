package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue;
import defpackage.ee;
import defpackage.p0;
import defpackage.r1;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NextFrameEndCallbackQueue {
    public final AtomicInt a = new AtomicInteger(0);
    public final AwaiterQueue b = new AwaiterQueue();
    public final p0 c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.atomic.AtomicInteger, androidx.compose.runtime.internal.AtomicInt] */
    public NextFrameEndCallbackQueue(ee eeVar) {
        this.c = new p0(24, this, eeVar);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NextFrameEndAwaiter extends AwaiterQueue.Awaiter {
        public r1 a;

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void a() {
            this.a = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void b(Throwable th) {
            throw th;
        }
    }
}

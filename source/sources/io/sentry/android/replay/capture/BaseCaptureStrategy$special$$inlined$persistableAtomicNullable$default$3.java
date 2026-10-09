package io.sentry.android.replay.capture;

import io.sentry.android.replay.ReplayCache;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 {
    public final AtomicReference a = new AtomicReference(null);
    public final /* synthetic */ BaseCaptureStrategy b;
    public final /* synthetic */ BaseCaptureStrategy c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ AnonymousClass2 j;

        public AnonymousClass1(AnonymousClass2 anonymousClass2) {
            this.j = anonymousClass2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.j.a();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends Lambda implements Function0<Unit> {
        public final /* synthetic */ Object k;
        public final /* synthetic */ Object l;
        public final /* synthetic */ BaseCaptureStrategy m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Object obj, Object obj2, BaseCaptureStrategy baseCaptureStrategy) {
            super(0);
            this.k = obj;
            this.l = obj2;
            this.m = baseCaptureStrategy;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            ReplayCache replayCache = this.m.h;
            if (replayCache != null) {
                replayCache.q("replay.screen-at-start", String.valueOf(this.l));
            }
            return Unit.a;
        }
    }

    public BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3(BaseCaptureStrategy baseCaptureStrategy, BaseCaptureStrategy baseCaptureStrategy2) {
        this.b = baseCaptureStrategy;
        this.c = baseCaptureStrategy2;
    }
}

package coil3.util;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LifecyclesKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(Lifecycle lifecycle, ContinuationImpl continuationImpl) {
        LifecyclesKt$awaitStarted$1 lifecyclesKt$awaitStarted$1;
        int i;
        Lifecycle lifecycle2;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        LifecycleObserver lifecycleObserver;
        LifecycleObserver lifecycleObserver2;
        if (continuationImpl instanceof LifecyclesKt$awaitStarted$1) {
            LifecyclesKt$awaitStarted$1 lifecyclesKt$awaitStarted$12 = (LifecyclesKt$awaitStarted$1) continuationImpl;
            int i2 = lifecyclesKt$awaitStarted$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lifecyclesKt$awaitStarted$12.p = i2 - Integer.MIN_VALUE;
                lifecyclesKt$awaitStarted$1 = lifecyclesKt$awaitStarted$12;
                Object obj = lifecyclesKt$awaitStarted$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = lifecyclesKt$awaitStarted$1.p;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i == 1) {
                        ref$ObjectRef = lifecyclesKt$awaitStarted$1.n;
                        lifecycle2 = lifecyclesKt$awaitStarted$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            lifecycleObserver = (LifecycleObserver) ref$ObjectRef.j;
                            if (lifecycleObserver != null) {
                            }
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (((LifecycleRegistry) lifecycle).i.compareTo(Lifecycle.State.m) >= 0) {
                        return unit;
                    }
                    ?? obj2 = new Object();
                    try {
                        lifecyclesKt$awaitStarted$1.m = lifecycle;
                        lifecyclesKt$awaitStarted$1.n = obj2;
                        lifecyclesKt$awaitStarted$1.p = 1;
                        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(lifecyclesKt$awaitStarted$1));
                        cancellableContinuationImpl.v();
                        DefaultLifecycleObserver defaultLifecycleObserver = new DefaultLifecycleObserver() { // from class: coil3.util.LifecyclesKt$awaitStarted$2$1
                            @Override // androidx.lifecycle.DefaultLifecycleObserver
                            public final void onStart(LifecycleOwner lifecycleOwner) {
                                CancellableContinuationImpl.this.g(Unit.a);
                            }
                        };
                        obj2.j = defaultLifecycleObserver;
                        lifecycle.a(defaultLifecycleObserver);
                        if (cancellableContinuationImpl.u() == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        lifecycle2 = lifecycle;
                        ref$ObjectRef = obj2;
                    } catch (Throwable th3) {
                        lifecycle2 = lifecycle;
                        ref$ObjectRef = obj2;
                        th = th3;
                        lifecycleObserver = (LifecycleObserver) ref$ObjectRef.j;
                        if (lifecycleObserver != null) {
                            lifecycle2.b(lifecycleObserver);
                        }
                        throw th;
                    }
                }
                lifecycleObserver2 = (LifecycleObserver) ref$ObjectRef.j;
                if (lifecycleObserver2 != null) {
                    lifecycle2.b(lifecycleObserver2);
                }
                return unit;
            }
        }
        lifecyclesKt$awaitStarted$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = lifecyclesKt$awaitStarted$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = lifecyclesKt$awaitStarted$1.p;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        lifecycleObserver2 = (LifecycleObserver) ref$ObjectRef.j;
        if (lifecycleObserver2 != null) {
        }
        return unit2;
    }
}

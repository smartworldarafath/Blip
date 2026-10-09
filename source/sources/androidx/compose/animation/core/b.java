package androidx.compose.animation.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ CoroutineScope k;
    public final /* synthetic */ Object l;

    public /* synthetic */ b(Thread thread, CoroutineScope coroutineScope) {
        this.l = thread;
        this.k = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        CoroutineScope coroutineScope = this.k;
        Object obj2 = this.l;
        switch (i) {
            case 0:
                BuildersKt.c(coroutineScope, null, CoroutineStart.m, new Transition$animateTo$1$1$1((Transition) obj2, null), 1);
                return new Object();
            default:
                Function0 function0 = (Function0) obj;
                if (obj2 == Thread.currentThread()) {
                    function0.a();
                } else {
                    BuildersKt.c(coroutineScope, null, null, new TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1(function0, null), 3);
                }
                return Unit.a;
        }
    }

    public /* synthetic */ b(CoroutineScope coroutineScope, Transition transition) {
        this.k = coroutineScope;
        this.l = transition;
    }
}

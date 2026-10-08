package androidx.room;

import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ObservedTableVersions {
    public final MutableStateFlow a;

    public ObservedTableVersions(int i) {
        this.a = StateFlowKt.a(new int[i]);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(FlowCollector flowCollector, ContinuationImpl continuationImpl) {
        ObservedTableVersions$collect$1 observedTableVersions$collect$1;
        int i;
        if (continuationImpl instanceof ObservedTableVersions$collect$1) {
            observedTableVersions$collect$1 = (ObservedTableVersions$collect$1) continuationImpl;
            int i2 = observedTableVersions$collect$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                observedTableVersions$collect$1.o = i2 - Integer.MIN_VALUE;
                Object obj = observedTableVersions$collect$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = observedTableVersions$collect$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    } else {
                        ResultKt.b(obj);
                        f7.h();
                        return;
                    }
                }
                ResultKt.b(obj);
                observedTableVersions$collect$1.o = 1;
                this.a.a(flowCollector, observedTableVersions$collect$1);
                return;
            }
        }
        observedTableVersions$collect$1 = new ObservedTableVersions$collect$1(this, continuationImpl);
        Object obj2 = observedTableVersions$collect$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = observedTableVersions$collect$1.o;
        if (i == 0) {
        }
    }
}

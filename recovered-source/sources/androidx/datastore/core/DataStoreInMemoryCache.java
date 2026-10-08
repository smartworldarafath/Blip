package androidx.datastore.core;

import defpackage.k8;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataStoreInMemoryCache<T> {
    public final MutableStateFlow a = StateFlowKt.a(UnInitialized.b);

    public final State a() {
        return (State) this.a.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r6.a > r2.a) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(State state) {
        MutableStateFlow mutableStateFlow;
        Object value;
        State state2;
        boolean a;
        state.getClass();
        do {
            mutableStateFlow = this.a;
            value = mutableStateFlow.getValue();
            state2 = (State) value;
            if (state2 instanceof ReadException) {
                a = true;
            } else {
                a = Intrinsics.a(state2, UnInitialized.b);
            }
            if (!a) {
                if (!(state2 instanceof Data)) {
                    if (!(state2 instanceof Final)) {
                        k8.e();
                        return;
                    }
                }
            }
            state2 = state;
        } while (!mutableStateFlow.e(value, state2));
    }
}

package net.blip.libblip;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.libblip.DerivedStateFlow$collect$2", f = "DerivedStateFlow.kt", l = {25, 25}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class DerivedStateFlow$collect$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<?>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ DerivedStateFlow p;
    public final /* synthetic */ FlowCollector q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DerivedStateFlow$collect$2(DerivedStateFlow derivedStateFlow, FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.p = derivedStateFlow;
        this.q = flowCollector;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((DerivedStateFlow$collect$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DerivedStateFlow$collect$2 derivedStateFlow$collect$2 = new DerivedStateFlow$collect$2(this.p, this.q, continuation);
        derivedStateFlow$collect$2.o = obj;
        return derivedStateFlow$collect$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (((kotlinx.coroutines.flow.StateFlow) r7).a(r6.q, r6) == r1) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (r7 == r1) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                f7.h();
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Flow i2 = FlowKt.i(this.p.k);
            this.o = null;
            this.n = 1;
            obj = FlowKt.u(i2, coroutineScope, this);
        }
        this.o = null;
        this.n = 2;
    }
}

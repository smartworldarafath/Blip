package kotlinx.coroutines.flow;

import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ FlowUtil$createFlow$$inlined$map$1 j;
    public final /* synthetic */ Function4 k;

    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", l = {116, 118}, m = "collect", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;
        public FlowCollector p;
        public Throwable q;
        public int r;
        public int s;
        public long t;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(FlowUtil$createFlow$$inlined$map$1 flowUtil$createFlow$$inlined$map$1, Function4 function4) {
        this.j = flowUtil$createFlow$$inlined$map$1;
        this.k = function4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        if (r15 == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006a -> B:14:0x0092). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0083 -> B:11:0x0086). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        int i;
        long j;
        int i2;
        int i3;
        int i4;
        FlowCollector flowCollector2;
        Object obj;
        Throwable th;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i5 = anonymousClass1.n;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.n = i5 - Integer.MIN_VALUE;
                Object obj2 = anonymousClass1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anonymousClass1.n;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            j = anonymousClass1.t;
                            i4 = anonymousClass1.r;
                            th = anonymousClass1.q;
                            flowCollector2 = anonymousClass1.p;
                            ResultKt.b(obj2);
                            if (((Boolean) obj2).booleanValue()) {
                                j++;
                                i3 = 1;
                                AnonymousClass1 anonymousClass12 = anonymousClass1;
                                int i6 = i4;
                                flowCollector = flowCollector2;
                                if (i3 == 0) {
                                    return Unit.a;
                                }
                                i2 = i6;
                                anonymousClass1 = anonymousClass12;
                                anonymousClass1.p = flowCollector;
                                anonymousClass1.q = null;
                                anonymousClass1.r = i2;
                                anonymousClass1.t = j;
                                anonymousClass1.s = 0;
                                anonymousClass1.n = 1;
                                obj = FlowKt.f(this.j, flowCollector, anonymousClass1);
                                if (obj != coroutineSingletons) {
                                    flowCollector2 = flowCollector;
                                    i4 = i2;
                                    i3 = 0;
                                    th = (Throwable) obj;
                                    if (th != null) {
                                        Long l = new Long(j);
                                        anonymousClass1.p = flowCollector2;
                                        anonymousClass1.q = th;
                                        anonymousClass1.r = i4;
                                        anonymousClass1.t = j;
                                        anonymousClass1.s = i3;
                                        anonymousClass1.n = 2;
                                        obj2 = this.k.j(flowCollector2, th, l, anonymousClass1);
                                    }
                                    AnonymousClass1 anonymousClass122 = anonymousClass1;
                                    int i62 = i4;
                                    flowCollector = flowCollector2;
                                    if (i3 == 0) {
                                    }
                                }
                                return coroutineSingletons;
                            }
                            throw th;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    int i7 = anonymousClass1.s;
                    j = anonymousClass1.t;
                    int i8 = anonymousClass1.r;
                    flowCollector2 = anonymousClass1.p;
                    ResultKt.b(obj2);
                    i3 = i7;
                    i4 = i8;
                    obj = obj2;
                    th = (Throwable) obj;
                    if (th != null) {
                    }
                    AnonymousClass1 anonymousClass1222 = anonymousClass1;
                    int i622 = i4;
                    flowCollector = flowCollector2;
                    if (i3 == 0) {
                    }
                } else {
                    ResultKt.b(obj2);
                    j = 0;
                    i2 = 0;
                    anonymousClass1.p = flowCollector;
                    anonymousClass1.q = null;
                    anonymousClass1.r = i2;
                    anonymousClass1.t = j;
                    anonymousClass1.s = 0;
                    anonymousClass1.n = 1;
                    obj = FlowKt.f(this.j, flowCollector, anonymousClass1);
                    if (obj != coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
            }
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj22 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anonymousClass1.n;
        if (i == 0) {
        }
    }
}

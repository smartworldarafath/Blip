package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ Function2 j;
    public final /* synthetic */ Flow k;

    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {115, 119}, m = "collect", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;
        public FlowCollector p;
        public SafeCollector q;
        public int r;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, Flow flow) {
        this.j = function2;
        this.k = flow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        if (r7.k.a(r8, r0) != r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
    
        if (r9 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        ?? r2;
        int i;
        try {
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i2 - Integer.MIN_VALUE;
                    Object obj = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    r2 = anonymousClass1.n;
                    if (r2 == 0) {
                        if (r2 != 1) {
                            if (r2 == 2) {
                                ResultKt.b(obj);
                                return Unit.a;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        int i3 = anonymousClass1.r;
                        SafeCollector safeCollector = anonymousClass1.q;
                        FlowCollector flowCollector2 = anonymousClass1.p;
                        ResultKt.b(obj);
                        i = i3;
                        flowCollector = flowCollector2;
                        r2 = safeCollector;
                    } else {
                        ResultKt.b(obj);
                        CoroutineContext coroutineContext = anonymousClass1.k;
                        coroutineContext.getClass();
                        SafeCollector safeCollector2 = new SafeCollector(flowCollector, coroutineContext);
                        Function2 function2 = this.j;
                        anonymousClass1.p = flowCollector;
                        anonymousClass1.q = safeCollector2;
                        i = 0;
                        anonymousClass1.r = 0;
                        anonymousClass1.n = 1;
                        Object n = function2.n(safeCollector2, anonymousClass1);
                        r2 = safeCollector2;
                    }
                    r2.w();
                    anonymousClass1.p = null;
                    anonymousClass1.q = null;
                    anonymousClass1.r = i;
                    anonymousClass1.n = 2;
                }
            }
            if (r2 == 0) {
            }
            r2.w();
            anonymousClass1.p = null;
            anonymousClass1.q = null;
            anonymousClass1.r = i;
            anonymousClass1.n = 2;
        } catch (Throwable th) {
            r2.w();
            throw th;
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj2 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        r2 = anonymousClass1.n;
    }
}

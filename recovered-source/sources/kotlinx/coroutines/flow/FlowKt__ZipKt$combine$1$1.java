package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class FlowKt__ZipKt$combine$1$1 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {
    public FlowCollector n;
    public int o;
    public /* synthetic */ FlowCollector p;
    public /* synthetic */ Object[] q;
    public final /* synthetic */ Function3 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$1$1(Function3 function3, Continuation continuation) {
        super(3, continuation);
        this.r = function3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1(this.r, (Continuation) obj3);
        flowKt__ZipKt$combine$1$1.p = (FlowCollector) obj;
        flowKt__ZipKt$combine$1$1.q = (Object[]) obj2;
        return flowKt__ZipKt$combine$1$1.v(Unit.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
    
        if (r0.r(r8, r7) == r2) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        if (r8 == r2) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FlowCollector flowCollector = this.p;
        Object[] objArr = this.q;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowCollector = this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Object obj2 = objArr[0];
            Object obj3 = objArr[1];
            this.p = null;
            this.q = null;
            this.n = flowCollector;
            this.o = 1;
            obj = this.r.f(obj2, obj3, this);
        }
        this.p = null;
        this.q = null;
        this.n = null;
        this.o = 2;
    }
}

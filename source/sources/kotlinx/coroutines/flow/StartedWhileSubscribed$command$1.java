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
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {175, 177, 179, 180, 182}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ FlowCollector o;
    public /* synthetic */ int p;
    public final /* synthetic */ StartedWhileSubscribed q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation continuation) {
        super(3, continuation);
        this.q = startedWhileSubscribed;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        int intValue = ((Number) obj2).intValue();
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.q, (Continuation) obj3);
        startedWhileSubscribed$command$1.o = (FlowCollector) obj;
        startedWhileSubscribed$command$1.p = intValue;
        return startedWhileSubscribed$command$1.v(Unit.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0081, code lost:
    
        if (r0.r(r11, r10) == r2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(Long.MAX_VALUE, r10) == r2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if (r0.r(r11, r10) == r2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0042, code lost:
    
        if (r0.r(r11, r10) == r2) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(0, r10) == r2) goto L32;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FlowCollector flowCollector = this.o;
        int i = this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.n;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj);
                            SharingCommand sharingCommand = SharingCommand.l;
                            this.o = null;
                            this.p = i;
                            this.n = 5;
                        }
                    } else {
                        ResultKt.b(obj);
                        this.o = flowCollector;
                        this.p = i;
                        this.n = 4;
                    }
                } else {
                    ResultKt.b(obj);
                    SharingCommand sharingCommand2 = SharingCommand.k;
                    this.o = flowCollector;
                    this.p = i;
                    this.n = 3;
                }
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            if (i > 0) {
                SharingCommand sharingCommand3 = SharingCommand.j;
                this.o = null;
                this.p = i;
                this.n = 1;
            } else {
                this.o = flowCollector;
                this.p = i;
                this.n = 2;
            }
            return coroutineSingletons;
        }
        return Unit.a;
    }
}

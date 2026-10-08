package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__EmittersKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ThrowingCollector throwingCollector, Function3 function3, Throwable th, ContinuationImpl continuationImpl) {
        FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$1;
        int i;
        try {
            if (continuationImpl instanceof FlowKt__EmittersKt$invokeSafely$1) {
                FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$12 = (FlowKt__EmittersKt$invokeSafely$1) continuationImpl;
                int i2 = flowKt__EmittersKt$invokeSafely$12.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    flowKt__EmittersKt$invokeSafely$12.o = i2 - Integer.MIN_VALUE;
                    flowKt__EmittersKt$invokeSafely$1 = flowKt__EmittersKt$invokeSafely$12;
                    Object obj = flowKt__EmittersKt$invokeSafely$1.n;
                    Object obj2 = CoroutineSingletons.j;
                    i = flowKt__EmittersKt$invokeSafely$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            th = flowKt__EmittersKt$invokeSafely$1.m;
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        flowKt__EmittersKt$invokeSafely$1.m = th;
                        flowKt__EmittersKt$invokeSafely$1.o = 1;
                        if (function3.f(throwingCollector, th, flowKt__EmittersKt$invokeSafely$1) == obj2) {
                            return obj2;
                        }
                    }
                    return Unit.a;
                }
            }
            if (i == 0) {
            }
            return Unit.a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                ExceptionsKt.a(th2, th);
            }
            throw th2;
        }
        flowKt__EmittersKt$invokeSafely$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = flowKt__EmittersKt$invokeSafely$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = flowKt__EmittersKt$invokeSafely$1.o;
    }
}

package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnchoredDraggableKt {
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(Function0 function0, Function2 function2, ContinuationImpl continuationImpl) {
        AnchoredDraggableKt$restartable$1 anchoredDraggableKt$restartable$1;
        int i;
        if (continuationImpl instanceof AnchoredDraggableKt$restartable$1) {
            AnchoredDraggableKt$restartable$1 anchoredDraggableKt$restartable$12 = (AnchoredDraggableKt$restartable$1) continuationImpl;
            int i2 = anchoredDraggableKt$restartable$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableKt$restartable$12.n = i2 - Integer.MIN_VALUE;
                anchoredDraggableKt$restartable$1 = anchoredDraggableKt$restartable$12;
                Object obj = anchoredDraggableKt$restartable$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anchoredDraggableKt$restartable$1.n;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    AnchoredDraggableKt$restartable$2 anchoredDraggableKt$restartable$2 = new AnchoredDraggableKt$restartable$2(function0, function2, null);
                    anchoredDraggableKt$restartable$1.n = 1;
                    if (CoroutineScopeKt.c(anchoredDraggableKt$restartable$2, anchoredDraggableKt$restartable$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        anchoredDraggableKt$restartable$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = anchoredDraggableKt$restartable$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anchoredDraggableKt$restartable$1.n;
        if (i == 0) {
        }
        return Unit.a;
    }

    public static final Object b(AnchoredDraggableState anchoredDraggableState, Object obj, float f, SuspendLambda suspendLambda) {
        Object b = anchoredDraggableState.b(obj, MutatePriority.j, new AnchoredDraggableKt$animateTo$2(anchoredDraggableState, f, null), suspendLambda);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }
}

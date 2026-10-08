package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForEachGestureKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:10:0x005d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
        ForEachGestureKt$awaitAllPointersUp$3 forEachGestureKt$awaitAllPointersUp$3;
        int i;
        int size;
        int i2;
        if (baseContinuationImpl instanceof ForEachGestureKt$awaitAllPointersUp$3) {
            ForEachGestureKt$awaitAllPointersUp$3 forEachGestureKt$awaitAllPointersUp$32 = (ForEachGestureKt$awaitAllPointersUp$3) baseContinuationImpl;
            int i3 = forEachGestureKt$awaitAllPointersUp$32.p;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                forEachGestureKt$awaitAllPointersUp$32.p = i3 - Integer.MIN_VALUE;
                forEachGestureKt$awaitAllPointersUp$3 = forEachGestureKt$awaitAllPointersUp$32;
                Object obj = forEachGestureKt$awaitAllPointersUp$3.o;
                Object obj2 = CoroutineSingletons.j;
                i = forEachGestureKt$awaitAllPointersUp$3.p;
                if (i == 0) {
                    if (i == 1) {
                        PointerEventPass pointerEventPass2 = forEachGestureKt$awaitAllPointersUp$3.n;
                        AwaitPointerEventScope awaitPointerEventScope2 = forEachGestureKt$awaitAllPointersUp$3.m;
                        ResultKt.b(obj);
                        pointerEventPass = pointerEventPass2;
                        awaitPointerEventScope = awaitPointerEventScope2;
                        List list = ((PointerEvent) obj).a;
                        size = list.size();
                        i2 = 0;
                        while (i2 < size) {
                            if (((PointerInputChange) list.get(i2)).d) {
                                forEachGestureKt$awaitAllPointersUp$3.m = awaitPointerEventScope;
                                forEachGestureKt$awaitAllPointersUp$3.n = pointerEventPass;
                                forEachGestureKt$awaitAllPointersUp$3.p = 1;
                                obj = awaitPointerEventScope.q(pointerEventPass, forEachGestureKt$awaitAllPointersUp$3);
                                awaitPointerEventScope = awaitPointerEventScope;
                                if (obj == obj2) {
                                    return obj2;
                                }
                                List list2 = ((PointerEvent) obj).a;
                                size = list2.size();
                                i2 = 0;
                                while (i2 < size) {
                                }
                            } else {
                                i2++;
                            }
                        }
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                List list3 = awaitPointerEventScope.s().a;
                int size2 = list3.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    if (((PointerInputChange) list3.get(i4)).d) {
                        forEachGestureKt$awaitAllPointersUp$3.m = awaitPointerEventScope;
                        forEachGestureKt$awaitAllPointersUp$3.n = pointerEventPass;
                        forEachGestureKt$awaitAllPointersUp$3.p = 1;
                        obj = awaitPointerEventScope.q(pointerEventPass, forEachGestureKt$awaitAllPointersUp$3);
                        awaitPointerEventScope = awaitPointerEventScope;
                        if (obj == obj2) {
                        }
                        List list22 = ((PointerEvent) obj).a;
                        size = list22.size();
                        i2 = 0;
                        while (i2 < size) {
                        }
                        return Unit.a;
                    }
                }
                return Unit.a;
            }
        }
        forEachGestureKt$awaitAllPointersUp$3 = new ContinuationImpl(baseContinuationImpl);
        Object obj3 = forEachGestureKt$awaitAllPointersUp$3.o;
        Object obj22 = CoroutineSingletons.j;
        i = forEachGestureKt$awaitAllPointersUp$3.p;
        if (i == 0) {
        }
    }

    public static final Object b(PointerInputScope pointerInputScope, Function2 function2, Continuation continuation) {
        Object Y0 = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).Y0(new ForEachGestureKt$awaitEachGesture$2(continuation.o(), function2, null), continuation);
        if (Y0 == CoroutineSingletons.j) {
            return Y0;
        }
        return Unit.a;
    }
}

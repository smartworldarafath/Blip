package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsActions;
import defpackage.q;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1", f = "ComposeScrollCaptureCallback.android.kt", l = {90}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ComposeScrollCaptureCallback$scrollTracker$1 extends SuspendLambda implements Function2<Float, Continuation<? super Float>, Object> {
    public int n;
    public /* synthetic */ float o;
    public final /* synthetic */ ComposeScrollCaptureCallback p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeScrollCaptureCallback$scrollTracker$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, Continuation continuation) {
        super(2, continuation);
        this.p = composeScrollCaptureCallback;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ComposeScrollCaptureCallback$scrollTracker$1) s(Float.valueOf(((Number) obj).floatValue()), (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ComposeScrollCaptureCallback$scrollTracker$1 composeScrollCaptureCallback$scrollTracker$1 = new ComposeScrollCaptureCallback$scrollTracker$1(this.p, continuation);
        composeScrollCaptureCallback$scrollTracker$1.o = ((Number) obj).floatValue();
        return composeScrollCaptureCallback$scrollTracker$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Object obj2 = null;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            float f = this.o;
            ComposeScrollCaptureCallback composeScrollCaptureCallback = this.p;
            Object e = composeScrollCaptureCallback.a.d.j.e(SemanticsActions.e);
            if (e != null) {
                obj2 = e;
            }
            Function2 function2 = (Function2) obj2;
            if (function2 != null) {
                Offset offset = new Offset((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
                this.n = 1;
                obj = function2.n(offset, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                throw q.p("Required value was null.");
            }
        }
        return new Float(Float.intBitsToFloat((int) (((Offset) obj).a & 4294967295L)));
    }
}

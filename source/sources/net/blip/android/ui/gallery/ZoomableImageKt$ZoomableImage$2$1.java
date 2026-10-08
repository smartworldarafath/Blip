package net.blip.android.ui.gallery;

import android.view.ViewConfiguration;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$2$1", f = "ZoomableImage.kt", l = {56}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class ZoomableImageKt$ZoomableImage$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Function0 o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZoomableImageKt$ZoomableImage$2$1(Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = function0;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ZoomableImageKt$ZoomableImage$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ZoomableImageKt$ZoomableImage$2$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        MutableState mutableState = this.p;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            if (!((Boolean) mutableState.getValue()).booleanValue()) {
                return unit;
            }
            long doubleTapTimeout = ViewConfiguration.getDoubleTapTimeout();
            this.n = 1;
            if (DelayKt.b(doubleTapTimeout, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.o.a();
        mutableState.setValue(Boolean.FALSE);
        return unit;
    }
}

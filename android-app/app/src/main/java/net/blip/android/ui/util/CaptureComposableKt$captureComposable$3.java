package net.blip.android.ui.util;

import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.CaptureComposableKt$captureComposable$3", f = "CaptureComposable.kt", l = {147}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class CaptureComposableKt$captureComposable$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ ComponentActivity o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureComposableKt$captureComposable$3(ComponentActivity componentActivity, Continuation continuation) {
        super(2, continuation);
        this.o = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CaptureComposableKt$captureComposable$3) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CaptureComposableKt$captureComposable$3(this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.n = 1;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
        cancellableContinuationImpl.v();
        final View decorView = this.o.getWindow().getDecorView();
        decorView.getClass();
        if (decorView.isAttachedToWindow()) {
            cancellableContinuationImpl.g(Unit.a);
        } else {
            decorView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: net.blip.android.ui.util.CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    decorView.removeOnAttachStateChangeListener(this);
                    cancellableContinuationImpl.g(Unit.a);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                }
            });
        }
        Object u = cancellableContinuationImpl.u();
        if (u == coroutineSingletons) {
            return coroutineSingletons;
        }
        return u;
    }
}

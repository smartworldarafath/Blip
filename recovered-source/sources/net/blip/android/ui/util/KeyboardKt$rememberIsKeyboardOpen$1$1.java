package net.blip.android.ui.util;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.ProduceStateScope;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.f7;
import defpackage.p0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.util.KeyboardKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.KeyboardKt$rememberIsKeyboardOpen$1$1", f = "Keyboard.kt", l = {38}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class KeyboardKt$rememberIsKeyboardOpen$1$1 extends SuspendLambda implements Function2<ProduceStateScope<Boolean>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ View p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyboardKt$rememberIsKeyboardOpen$1$1(View view, Continuation continuation) {
        super(2, continuation);
        this.p = view;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((KeyboardKt$rememberIsKeyboardOpen$1$1) s((ProduceStateScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        KeyboardKt$rememberIsKeyboardOpen$1$1 keyboardKt$rememberIsKeyboardOpen$1$1 = new KeyboardKt$rememberIsKeyboardOpen$1$1(this.p, continuation);
        keyboardKt$rememberIsKeyboardOpen$1$1.o = obj;
        return keyboardKt$rememberIsKeyboardOpen$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        final ProduceStateScope produceStateScope = (ProduceStateScope) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            f7.h();
            return null;
        }
        ResultKt.b(obj);
        final View view = this.p;
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ba
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ProduceStateScope.this.setValue(Boolean.valueOf(KeyboardKt.b(view)));
            }
        };
        viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
        p0 p0Var = new p0(20, viewTreeObserver, onGlobalLayoutListener);
        this.o = null;
        this.n = 1;
        produceStateScope.f(p0Var, this);
        return coroutineSingletons;
    }
}

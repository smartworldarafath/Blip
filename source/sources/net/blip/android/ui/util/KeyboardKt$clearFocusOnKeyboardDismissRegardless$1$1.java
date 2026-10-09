package net.blip.android.ui.util;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.focus.FocusManager;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1", f = "Keyboard.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ FocusManager n;
    public final /* synthetic */ MutableState o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1(FocusManager focusManager, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.n = focusManager;
        this.o = mutableState;
        this.p = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1 keyboardKt$clearFocusOnKeyboardDismissRegardless$1$1 = (KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        keyboardKt$clearFocusOnKeyboardDismissRegardless$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        boolean booleanValue = ((Boolean) this.o.getValue()).booleanValue();
        MutableState mutableState = this.p;
        if (booleanValue) {
            mutableState.setValue(Boolean.TRUE);
        } else if (((Boolean) mutableState.getValue()).booleanValue()) {
            FocusManager.a(this.n);
        }
        return Unit.a;
    }
}

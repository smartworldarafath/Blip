package net.blip.shared;

import androidx.compose.ui.focus.FocusRequester;
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
@DebugMetadata(c = "net.blip.shared.Modifier_autoFocusKt$autoFocus$1$1$1", f = "Modifier+autoFocus.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class Modifier_autoFocusKt$autoFocus$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ FocusRequester n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Modifier_autoFocusKt$autoFocus$1$1$1(FocusRequester focusRequester, Continuation continuation) {
        super(2, continuation);
        this.n = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        Modifier_autoFocusKt$autoFocus$1$1$1 modifier_autoFocusKt$autoFocus$1$1$1 = (Modifier_autoFocusKt$autoFocus$1$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        modifier_autoFocusKt$autoFocus$1$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new Modifier_autoFocusKt$autoFocus$1$1$1(this.n, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        FocusRequester.a(this.n);
        return Unit.a;
    }
}

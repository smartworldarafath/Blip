package net.blip.android.ui.onboarding;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.text.input.TextFieldValue;
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
@DebugMetadata(c = "net.blip.android.ui.onboarding.OnboardingCodeEntryStep$Composable$2$1$3$1", f = "OnboardingCodeEntryStep.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class OnboardingCodeEntryStep$Composable$2$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ FocusRequester n;
    public final /* synthetic */ MutableState o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingCodeEntryStep$Composable$2$1$3$1(FocusRequester focusRequester, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.n = focusRequester;
        this.o = mutableState;
        this.p = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        OnboardingCodeEntryStep$Composable$2$1$3$1 onboardingCodeEntryStep$Composable$2$1$3$1 = (OnboardingCodeEntryStep$Composable$2$1$3$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        onboardingCodeEntryStep$Composable$2$1$3$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new OnboardingCodeEntryStep$Composable$2$1$3$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        if (!((Boolean) this.o.getValue()).booleanValue()) {
            this.p.setValue(new TextFieldValue(6, 0L, ""));
            FocusRequester.a(this.n);
        }
        return Unit.a;
    }
}

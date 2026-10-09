package net.blip.android.ui.onboarding;

import androidx.compose.runtime.MutableState;
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
@DebugMetadata(c = "net.blip.android.ui.onboarding.OnboardingEmailEntryStep$Composable$1$1$3$1", f = "OnboardingEmailEntryStep.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class OnboardingEmailEntryStep$Composable$1$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ FocusRequester n;
    public final /* synthetic */ MutableState o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingEmailEntryStep$Composable$1$1$3$1(FocusRequester focusRequester, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = focusRequester;
        this.o = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        OnboardingEmailEntryStep$Composable$1$1$3$1 onboardingEmailEntryStep$Composable$1$1$3$1 = (OnboardingEmailEntryStep$Composable$1$1$3$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        onboardingEmailEntryStep$Composable$1$1$3$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new OnboardingEmailEntryStep$Composable$1$1$3$1(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        if (!((Boolean) this.o.getValue()).booleanValue()) {
            FocusRequester.a(this.n);
        }
        return Unit.a;
    }
}

package net.blip.android.ui.onboarding;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.onboarding.OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1", f = "OnboardingEnableNotificationsStep.kt", l = {124}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ long o;
    public final /* synthetic */ MutableFloatState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1(long j, MutableFloatState mutableFloatState, Continuation continuation) {
        super(2, continuation);
        this.o = j;
        this.p = mutableFloatState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            this.n = 1;
            if (DelayKt.b(this.o, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        ((SnapshotMutableFloatStateImpl) this.p).k(1.0f);
        return Unit.a;
    }
}

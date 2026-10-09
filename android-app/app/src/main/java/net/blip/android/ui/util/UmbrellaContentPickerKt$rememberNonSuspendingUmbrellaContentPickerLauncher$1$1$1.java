package net.blip.android.ui.util;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1", f = "UmbrellaContentPicker.kt", l = {177}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Function2 o;
    public final /* synthetic */ UmbrellaContentPickerType p;
    public final /* synthetic */ Function1 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1(Function2 function2, UmbrellaContentPickerType umbrellaContentPickerType, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.o = function2;
        this.p = umbrellaContentPickerType;
        this.q = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1(this.o, this.p, this.q, continuation);
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
            obj = this.o.n(this.p, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.q.b((List) obj);
        return Unit.a;
    }
}

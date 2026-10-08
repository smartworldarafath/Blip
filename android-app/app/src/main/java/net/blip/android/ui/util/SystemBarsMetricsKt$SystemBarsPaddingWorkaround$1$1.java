package net.blip.android.ui.util;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Dp;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1", f = "SystemBarsMetrics.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ PaddingValues n;
    public final /* synthetic */ MutableState o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1(PaddingValues paddingValues, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = paddingValues;
        this.o = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1 systemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1 = (SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        systemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        PaddingValues paddingValues = this.n;
        float d = paddingValues.d();
        float a = paddingValues.a();
        int a2 = Dp.a(d, 0.0f);
        MutableState mutableState = this.o;
        if (a2 <= 0) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SystemBarsMetricsKt.a;
            d = ((SystemBarsMetrics) mutableState.getValue()).a;
        }
        if (Dp.a(a, 0.0f) <= 0) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = SystemBarsMetricsKt.a;
            a = ((SystemBarsMetrics) mutableState.getValue()).b;
        }
        SystemBarsMetrics systemBarsMetrics = new SystemBarsMetrics(d, a);
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = SystemBarsMetricsKt.a;
        mutableState.setValue(systemBarsMetrics);
        return Unit.a;
    }
}

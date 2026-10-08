package net.blip.shared;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.shared.SelectableLazyListScope$items$4$1$1$1", f = "SelectionList.kt", l = {344}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class SelectableLazyListScope$items$4$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SelectableLazyItemScope o;
    public final /* synthetic */ Integer p;
    public final /* synthetic */ SelectableLazyListScope q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectableLazyListScope$items$4$1$1$1(SelectableLazyItemScope selectableLazyItemScope, Integer num, SelectableLazyListScope selectableLazyListScope, Continuation continuation) {
        super(2, continuation);
        this.o = selectableLazyItemScope;
        this.p = num;
        this.q = selectableLazyListScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((SelectableLazyListScope$items$4$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SelectableLazyListScope$items$4$1$1$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            final SelectableLazyItemScope selectableLazyItemScope = this.o;
            MutableSharedFlow mutableSharedFlow = selectableLazyItemScope.b;
            final Integer num = this.p;
            final SelectableLazyListScope selectableLazyListScope = this.q;
            FlowCollector flowCollector = new FlowCollector() { // from class: net.blip.shared.SelectableLazyListScope$items$4$1$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    Integer num2;
                    boolean booleanValue = ((Boolean) SelectableLazyItemScope.this.a.getValue()).booleanValue();
                    Unit unit = Unit.a;
                    if (!booleanValue && (num2 = num) != null) {
                        selectableLazyListScope.b.b(num2);
                    }
                    return unit;
                }
            };
            this.n = 1;
            if (mutableSharedFlow.a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        f7.h();
        return null;
    }
}

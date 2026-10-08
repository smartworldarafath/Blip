package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import defpackage.u2;
import defpackage.zb;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1", f = "SelectionMagnifier.kt", l = {83}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ State p;
    public final /* synthetic */ Animatable q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(State state, Animatable animatable, Continuation continuation) {
        super(2, continuation);
        this.p = state;
        this.q = animatable;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(this.p, this.q, continuation);
        selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1.o = obj;
        return selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;
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
            final CoroutineScope coroutineScope = (CoroutineScope) this.o;
            Flow l = SnapshotStateKt.l(new zb(this.p, 2));
            final Animatable animatable = this.q;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1.2

                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1$2$1", f = "SelectionMagnifier.kt", l = {96}, m = "invokeSuspend", v = 1)
                /* renamed from: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1$2$1, reason: invalid class name */
                /* loaded from: classes.dex */
                final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    public int n;
                    public final /* synthetic */ Animatable o;
                    public final /* synthetic */ long p;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(Animatable animatable, long j, Continuation continuation) {
                        super(2, continuation);
                        this.o = animatable;
                        this.p = j;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation s(Object obj, Continuation continuation) {
                        return new AnonymousClass1(this.o, this.p, continuation);
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
                            Offset offset = new Offset(this.p);
                            SpringSpec springSpec = SelectionMagnifierKt.d;
                            this.n = 1;
                            if (Animatable.d(this.o, offset, springSpec, null, this, 12) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        return Unit.a;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    long j = ((Offset) obj2).a;
                    Animatable animatable2 = Animatable.this;
                    long j2 = ((Offset) animatable2.f()).a & 9223372034707292159L;
                    Unit unit = Unit.a;
                    if (j2 != 9205357640488583168L && (9223372034707292159L & j) != 9205357640488583168L && Float.intBitsToFloat((int) (((Offset) animatable2.f()).a & 4294967295L)) != Float.intBitsToFloat((int) (j & 4294967295L))) {
                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(animatable2, j, null), 3);
                        return unit;
                    }
                    Object h = animatable2.h(new Offset(j), continuation);
                    if (h == CoroutineSingletons.j) {
                        return h;
                    }
                    return unit;
                }
            };
            this.n = 1;
            if (((AbstractFlow) l).a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}

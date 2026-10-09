package androidx.navigation.compose;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.MutableState;
import androidx.navigation.NavBackStackEntry;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$20$1", f = "NavHost.kt", l = {933}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class NavHostKt$NavHost$20$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SeekableTransitionState o;
    public final /* synthetic */ float p;
    public final /* synthetic */ MutableState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$20$1(SeekableTransitionState seekableTransitionState, float f, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = seekableTransitionState;
        this.p = f;
        this.q = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$20$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new NavHostKt$NavHost$20$1(this.o, this.p, this.q, continuation);
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
            MutableState mutableState = this.q;
            if (((List) mutableState.getValue()).size() > 1) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) ((List) mutableState.getValue()).get(((List) mutableState.getValue()).size() - 2);
                this.n = 1;
                if (this.o.o(this.p, navBackStackEntry, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        return Unit.a;
    }
}

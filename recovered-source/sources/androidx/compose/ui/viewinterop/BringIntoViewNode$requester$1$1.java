package androidx.compose.ui.viewinterop;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.relocation.BringIntoViewModifierNodeKt;
import defpackage.r1;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.viewinterop.BringIntoViewNode$requester$1$1", f = "AndroidViewHolder.android.kt", l = {764}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class BringIntoViewNode$requester$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ BringIntoViewNode o;
    public final /* synthetic */ Rect p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewNode$requester$1$1(BringIntoViewNode bringIntoViewNode, Rect rect, Continuation continuation) {
        super(2, continuation);
        this.o = bringIntoViewNode;
        this.p = rect;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((BringIntoViewNode$requester$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new BringIntoViewNode$requester$1$1(this.o, this.p, continuation);
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
            r1 r1Var = new r1(7, this.p);
            this.n = 1;
            if (BringIntoViewModifierNodeKt.a(this.o, r1Var, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}

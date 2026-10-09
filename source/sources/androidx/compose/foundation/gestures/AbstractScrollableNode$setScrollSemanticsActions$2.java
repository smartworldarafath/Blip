package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.AbstractScrollableNode$setScrollSemanticsActions$2", f = "AbstractScrollableNode.kt", l = {188}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AbstractScrollableNode$setScrollSemanticsActions$2 extends SuspendLambda implements Function2<Offset, Continuation<? super Offset>, Object> {
    public int n;
    public /* synthetic */ long o;
    public final /* synthetic */ AbstractScrollableNode p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractScrollableNode$setScrollSemanticsActions$2(AbstractScrollableNode abstractScrollableNode, Continuation continuation) {
        super(2, continuation);
        this.p = abstractScrollableNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AbstractScrollableNode$setScrollSemanticsActions$2) s(new Offset(((Offset) obj).a), (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AbstractScrollableNode$setScrollSemanticsActions$2 abstractScrollableNode$setScrollSemanticsActions$2 = new AbstractScrollableNode$setScrollSemanticsActions$2(this.p, continuation);
        abstractScrollableNode$setScrollSemanticsActions$2.o = ((Offset) obj).a;
        return abstractScrollableNode$setScrollSemanticsActions$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        long j = this.o;
        this.n = 1;
        Object a = ScrollableKt.a(((ScrollableNode) this.p).a0, j, this);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}

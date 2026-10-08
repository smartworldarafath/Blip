package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$showTextContextMenu$2", f = "BasicTextContextMenuProvider.kt", l = {130}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class BasicTextContextMenuProvider$showTextContextMenu$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ BasicTextContextMenuProvider o;
    public final /* synthetic */ BasicTextContextMenuProvider.SessionImpl p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicTextContextMenuProvider$showTextContextMenu$2(BasicTextContextMenuProvider basicTextContextMenuProvider, BasicTextContextMenuProvider.SessionImpl sessionImpl, Continuation continuation) {
        super(1, continuation);
        this.o = basicTextContextMenuProvider;
        this.p = sessionImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new BasicTextContextMenuProvider$showTextContextMenu$2(this.o, this.p, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        BasicTextContextMenuProvider.SessionImpl sessionImpl = this.p;
        MutableState mutableState = this.o.c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                ((SnapshotMutableStateImpl) mutableState).setValue(sessionImpl);
                this.n = 1;
                Object i2 = sessionImpl.b.i(this);
                if (i2 != coroutineSingletons) {
                    i2 = unit;
                }
                if (i2 == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return unit;
        } finally {
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
        }
    }
}

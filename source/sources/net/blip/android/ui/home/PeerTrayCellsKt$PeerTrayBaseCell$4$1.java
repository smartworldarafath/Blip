package net.blip.android.ui.home;

import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
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
@DebugMetadata(c = "net.blip.android.ui.home.PeerTrayCellsKt$PeerTrayBaseCell$4$1", f = "PeerTrayCells.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class PeerTrayCellsKt$PeerTrayBaseCell$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Function1 n;
    public final /* synthetic */ MutableState o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerTrayCellsKt$PeerTrayBaseCell$4$1(Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = function1;
        this.o = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        PeerTrayCellsKt$PeerTrayBaseCell$4$1 peerTrayCellsKt$PeerTrayBaseCell$4$1 = (PeerTrayCellsKt$PeerTrayBaseCell$4$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        peerTrayCellsKt$PeerTrayBaseCell$4$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PeerTrayCellsKt$PeerTrayBaseCell$4$1(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Boolean bool = (Boolean) this.o.getValue();
        bool.booleanValue();
        this.n.b(bool);
        return Unit.a;
    }
}

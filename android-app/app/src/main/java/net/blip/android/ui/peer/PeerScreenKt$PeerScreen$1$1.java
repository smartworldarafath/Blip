package net.blip.android.ui.peer;

import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.peer.PeerScreenKt$PeerScreen$1$1", f = "PeerScreen.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class PeerScreenKt$PeerScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Context n;
    public final /* synthetic */ PeerId o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerScreenKt$PeerScreen$1$1(Context context, PeerId peerId, Continuation continuation) {
        super(2, continuation);
        this.n = context;
        this.o = peerId;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        PeerScreenKt$PeerScreen$1$1 peerScreenKt$PeerScreen$1$1 = (PeerScreenKt$PeerScreen$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        peerScreenKt$PeerScreen$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PeerScreenKt$PeerScreen$1$1(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        ShortcutsManagerKt.e(this.n, this.o);
        return Unit.a;
    }
}

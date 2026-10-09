package net.blip.android.shortcuts;

import android.widget.Toast;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.MainActivity;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1", f = "PinPeerShortcutMenuItem.kt", l = {25}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ MainActivity o;
    public final /* synthetic */ Peer p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1(MainActivity mainActivity, Peer peer, Continuation continuation) {
        super(2, continuation);
        this.o = mainActivity;
        this.p = peer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        MainActivity mainActivity = this.o;
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
            obj = ShortcutsManagerKt.f(mainActivity, this.p, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if (!((Boolean) obj).booleanValue() && !mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
            Toast.makeText(mainActivity, "Couldn't add shortcut", 0).show();
        }
        return Unit.a;
    }
}

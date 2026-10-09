package net.blip.android.shortcuts;

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
import kotlinx.coroutines.DelayKt;
import net.blip.android.ui.util.CaptureScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1", f = "ShortcutsManager.kt", l = {243}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ CaptureScope o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1(CaptureScope captureScope, Continuation continuation) {
        super(2, continuation);
        this.o = captureScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ShortcutsManagerKt$createPeerShortcut$avatar$1$1$1(this.o, continuation);
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
            this.n = 1;
            if (DelayKt.b(1500L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        this.o.a.a();
        return Unit.a;
    }
}

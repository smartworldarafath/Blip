package net.blip.android.ui.util;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.accompanist.permissions.PermissionState;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$rememberSuspendingPermissionState$1$1", f = "Launchers.kt", l = {55}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class LaunchersKt$rememberSuspendingPermissionState$1$1 extends SuspendLambda implements Function1<Continuation<? super Boolean>, Object> {
    public int n;
    public final /* synthetic */ PermissionState o;
    public final /* synthetic */ Channel p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchersKt$rememberSuspendingPermissionState$1$1(PermissionState permissionState, Channel channel, Continuation continuation) {
        super(1, continuation);
        this.o = permissionState;
        this.p = channel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new LaunchersKt$rememberSuspendingPermissionState$1$1(this.o, this.p, (Continuation) obj).v(Unit.a);
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
        this.o.b();
        this.n = 1;
        Object i2 = this.p.i(this);
        if (i2 == coroutineSingletons) {
            return coroutineSingletons;
        }
        return i2;
    }
}

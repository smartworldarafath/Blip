package net.blip.android.notifications;

import android.content.Context;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.NotificationPermissionObserver$areNotificationsEnabled$1", f = "NotificationPermissionObserver.kt", l = {24, 25}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class NotificationPermissionObserver$areNotificationsEnabled$1 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {
    public boolean n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Context q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPermissionObserver$areNotificationsEnabled$1(Context context, Continuation continuation) {
        super(2, continuation);
        this.q = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NotificationPermissionObserver$areNotificationsEnabled$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NotificationPermissionObserver$areNotificationsEnabled$1 notificationPermissionObserver$areNotificationsEnabled$1 = new NotificationPermissionObserver$areNotificationsEnabled$1(this.q, continuation);
        notificationPermissionObserver$areNotificationsEnabled$1.p = obj;
        return notificationPermissionObserver$areNotificationsEnabled$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0056, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(2000, r7) == r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        if (r0.r(r8, r7) == r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0058, code lost:
    
        return r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0056 -> B:11:0x0021). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        boolean areNotificationsEnabled;
        FlowCollector flowCollector = (FlowCollector) this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                areNotificationsEnabled = this.n;
                ResultKt.b(obj);
                this.p = flowCollector;
                this.n = areNotificationsEnabled;
                this.o = 2;
            }
        }
        ResultKt.b(obj);
        CoroutineContext coroutineContext = this.k;
        coroutineContext.getClass();
        if (JobKt.f(coroutineContext)) {
            areNotificationsEnabled = new NotificationManagerCompat(this.q).b.areNotificationsEnabled();
            Boolean valueOf = Boolean.valueOf(areNotificationsEnabled);
            this.p = flowCollector;
            this.n = areNotificationsEnabled;
            this.o = 1;
        } else {
            return Unit.a;
        }
    }
}

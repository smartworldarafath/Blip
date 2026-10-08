package net.blip.android;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import net.blip.android.App;
import net.blip.android.notifications.NotificationChannels;
import net.blip.android.notifications.NotificationPermissionObserver;
import net.blip.libblip.event.NotificationPermissionsChanged;
import net.blip.libblip.frontend.NotificationPermissionStatus;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.App$onCreate$1", f = "App.kt", l = {70}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class App$onCreate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.App$onCreate$1$1", f = "App.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.App$onCreate$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        public /* synthetic */ boolean n;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) s(bool, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass1.v(unit);
            return unit;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, net.blip.android.App$onCreate$1$1, kotlin.coroutines.jvm.internal.SuspendLambda] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? suspendLambda = new SuspendLambda(2, continuation);
            suspendLambda.n = ((Boolean) obj).booleanValue();
            return suspendLambda;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            NotificationPermissionStatus notificationPermissionStatus;
            boolean z = this.n;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            if (z) {
                notificationPermissionStatus = NotificationPermissionStatus.p;
            } else {
                notificationPermissionStatus = NotificationPermissionStatus.o;
            }
            Context context = App.m;
            App.Companion.b().b.b(new NotificationPermissionsChanged(notificationPermissionStatus, ByteString.m));
            return Unit.a;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((App$onCreate$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SuspendLambda(2, continuation);
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
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
            NotificationChannels.Config config = NotificationChannels.a;
            Context context = App.m;
            NotificationManager notificationManager = new NotificationManagerCompat(App.Companion.a()).b;
            for (NotificationChannel notificationChannel : notificationManager.getNotificationChannels()) {
                Set set = NotificationChannels.f;
                ArrayList arrayList = new ArrayList(CollectionsKt.m(set, 10));
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(((NotificationChannels.Config) it.next()).a());
                }
                if (!arrayList.contains(notificationChannel.getId())) {
                    notificationManager.deleteNotificationChannel(notificationChannel.getId());
                }
            }
            for (NotificationChannels.Config config2 : NotificationChannels.f) {
                List<NotificationChannel> notificationChannels = notificationManager.getNotificationChannels();
                notificationChannels.getClass();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(notificationChannels, 10));
                Iterator<T> it2 = notificationChannels.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((NotificationChannel) it2.next()).getId());
                }
                if (!arrayList2.contains(config2.a())) {
                    NotificationChannelCompat notificationChannelCompat = config2.g;
                    NotificationChannel notificationChannel2 = new NotificationChannel(notificationChannelCompat.a, notificationChannelCompat.b, notificationChannelCompat.c);
                    notificationChannel2.setDescription(notificationChannelCompat.d);
                    notificationChannel2.setGroup(null);
                    notificationChannel2.setShowBadge(true);
                    notificationChannel2.setSound(notificationChannelCompat.e, notificationChannelCompat.f);
                    notificationChannel2.enableLights(false);
                    notificationChannel2.setLightColor(0);
                    notificationChannel2.setVibrationPattern(notificationChannelCompat.h);
                    notificationChannel2.enableVibration(notificationChannelCompat.g);
                    notificationManager.createNotificationChannel(notificationChannel2);
                }
            }
            Context context2 = App.m;
            Flow a = NotificationPermissionObserver.a(App.Companion.a());
            ?? suspendLambda = new SuspendLambda(2, null);
            this.n = 1;
            if (FlowKt.h(a, suspendLambda, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}

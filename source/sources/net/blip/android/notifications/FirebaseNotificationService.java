package net.blip.android.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import bsarchive.Metadata;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import defpackage.k8;
import defpackage.r1;
import defpackage.u2;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.App;
import net.blip.android.MainActivity;
import net.blip.android.R;
import net.blip.android.notifications.TransferNotificationBroadcastReceiver;
import net.blip.libblip.Dispatcher_androidKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Metadata_DerivedKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.frontend.Auth;
import net.blip.libblip.frontend.PeerMessageBody$TransferInvite;
import net.blip.libblip.frontend.State;
import net.blip.shared.String_formatAsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FirebaseNotificationService extends FirebaseMessagingService {
    public static final /* synthetic */ int v = 0;
    public final NotificationFactory r = new NotificationFactory(this);
    public final Lazy s = LazyKt.b(new Function0() { // from class: net.blip.android.notifications.a
        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            int i = FirebaseNotificationService.v;
            ShortTermDiskCache shortTermDiskCache = new ShortTermDiskCache(new File(FirebaseNotificationService.this.getApplicationContext().getCacheDir(), "FirebaseNotificationService"));
            BuildersKt.c(CoroutineScopeKt.a(Dispatchers.a), null, null, new FirebaseNotificationService$cache$2$1(shortTermDiskCache, null), 3);
            return shortTermDiskCache;
        }
    });
    public final Lazy t = LazyKt.b(new r1(16, this));
    public final Logger u = LoggerKt.a.m("FirebaseNotificationService", new Pair[0]);

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void c(RemoteMessage remoteMessage) {
        this.u.getClass();
        Logger.h("onMessageReceived", new Pair[0]);
        BuildersKt.c(CoroutineScopeKt.a(Dispatchers.a), null, null, new FirebaseNotificationService$onMessageReceived$1(this, remoteMessage, null), 3);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public final void d(String str) {
        str.getClass();
        this.u.getClass();
        Logger.h("new token: ".concat(str), new Pair[0]);
        Context context = App.m;
        Dispatcher_androidKt.a(str, App.Companion.b().b);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Peer peer, PeerMessageBody$TransferInvite peerMessageBody$TransferInvite, ContinuationImpl continuationImpl) {
        FirebaseNotificationService$handleTransferInvite$1 firebaseNotificationService$handleTransferInvite$1;
        int i;
        int i2;
        ShortTermDiskCache shortTermDiskCache;
        String str;
        final Peer peer2;
        String str2;
        Metadata metadata;
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite2 = peerMessageBody$TransferInvite;
        if (continuationImpl instanceof FirebaseNotificationService$handleTransferInvite$1) {
            firebaseNotificationService$handleTransferInvite$1 = (FirebaseNotificationService$handleTransferInvite$1) continuationImpl;
            int i3 = firebaseNotificationService$handleTransferInvite$1.r;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                firebaseNotificationService$handleTransferInvite$1.r = i3 - Integer.MIN_VALUE;
                Object obj = firebaseNotificationService$handleTransferInvite$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = firebaseNotificationService$handleTransferInvite$1.r;
                boolean z = true;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = firebaseNotificationService$handleTransferInvite$1.o;
                        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite3 = firebaseNotificationService$handleTransferInvite$1.n;
                        Peer peer3 = firebaseNotificationService$handleTransferInvite$1.m;
                        ResultKt.b(obj);
                        i2 = i4;
                        peer2 = peer3;
                        peerMessageBody$TransferInvite2 = peerMessageBody$TransferInvite3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    State state = (State) this.t.getValue();
                    if (state != null) {
                        Auth auth = state.r;
                        if (auth != null) {
                            str2 = auth.n;
                        } else {
                            str2 = null;
                        }
                        if (Intrinsics.a(str2, peer.c().m) && !State_DerivedKt.a(state).m) {
                            i2 = 1;
                            shortTermDiskCache = (ShortTermDiskCache) this.s.getValue();
                            str = peerMessageBody$TransferInvite2.m;
                            peer2 = peer;
                            firebaseNotificationService$handleTransferInvite$1.m = peer2;
                            firebaseNotificationService$handleTransferInvite$1.n = peerMessageBody$TransferInvite2;
                            firebaseNotificationService$handleTransferInvite$1.o = i2;
                            firebaseNotificationService$handleTransferInvite$1.r = 1;
                            if (shortTermDiskCache.b(str, peerMessageBody$TransferInvite2, firebaseNotificationService$handleTransferInvite$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    }
                    i2 = 0;
                    shortTermDiskCache = (ShortTermDiskCache) this.s.getValue();
                    str = peerMessageBody$TransferInvite2.m;
                    peer2 = peer;
                    firebaseNotificationService$handleTransferInvite$1.m = peer2;
                    firebaseNotificationService$handleTransferInvite$1.n = peerMessageBody$TransferInvite2;
                    firebaseNotificationService$handleTransferInvite$1.o = i2;
                    firebaseNotificationService$handleTransferInvite$1.r = 1;
                    if (shortTermDiskCache.b(str, peerMessageBody$TransferInvite2, firebaseNotificationService$handleTransferInvite$1) == coroutineSingletons) {
                    }
                }
                String str3 = peerMessageBody$TransferInvite2.m;
                metadata = peerMessageBody$TransferInvite2.n;
                if (metadata == null) {
                    metadata = new Metadata();
                }
                final Metadata metadata2 = metadata;
                if (i2 == 0) {
                    z = false;
                }
                NotificationFactory notificationFactory = this.r;
                notificationFactory.getClass();
                Context context = notificationFactory.a;
                peer2.getClass();
                str3.getClass();
                int hashCode = "transferInvite:".concat(str3).hashCode();
                Intent intent = new Intent(context, (Class<?>) MainActivity.class);
                intent.addFlags(603979776);
                final PendingIntent b = NotificationFactoryKt.b(context, intent, 0, 4);
                String str4 = TransferNotificationBroadcastReceiver.a;
                PeerId c = peer2.c();
                context.getClass();
                PendingIntent a = NotificationFactoryKt.a(context, TransferNotificationBroadcastReceiver.Companion.a(context, TransferNotificationBroadcastReceiver.a, hashCode, str3, metadata2, c), str3);
                int i5 = Colors.a;
                SpannableString spannableString = new SpannableString("Accept");
                spannableString.setSpan(new ForegroundColorSpan(i5), 0, spannableString.length(), 0);
                final NotificationCompat$Action notificationCompat$Action = new NotificationCompat$Action((IconCompat) null, spannableString, a);
                final PendingIntent a2 = NotificationFactoryKt.a(context, TransferNotificationBroadcastReceiver.Companion.a(context, TransferNotificationBroadcastReceiver.b, hashCode, str3, metadata2, peer2.c()), str3);
                int i6 = Colors.b;
                SpannableString spannableString2 = new SpannableString("Decline");
                spannableString2.setSpan(new ForegroundColorSpan(i6), 0, spannableString2.length(), 0);
                final NotificationCompat$Action notificationCompat$Action2 = new NotificationCompat$Action((IconCompat) null, spannableString2, a2);
                final boolean z2 = z;
                Pair c2 = notificationFactory.c(hashCode, NotificationChannels.a, peer2, new Function1() { // from class: net.blip.android.notifications.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj2) {
                        String a3;
                        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj2;
                        notificationCompat$Builder.getClass();
                        Notification notification = notificationCompat$Builder.A;
                        Peer peer4 = Peer.this;
                        boolean z3 = peer4 instanceof Peer.User;
                        Metadata metadata3 = metadata2;
                        if (z3) {
                            a3 = ((Peer.User) peer4).j.n;
                        } else if (peer4 instanceof Peer.Device) {
                            a3 = String_formatAsKt.a(Metadata_DerivedKt.d(metadata3));
                        } else {
                            k8.e();
                            return null;
                        }
                        notificationCompat$Builder.j(a3);
                        notificationCompat$Builder.g(peer4.b());
                        String str5 = Strings.a;
                        notificationCompat$Builder.f(StringsKt.d(metadata3.m));
                        notification.icon = R.drawable.ic_notification_waiting;
                        notificationCompat$Builder.v = Colors.a;
                        boolean z4 = z2;
                        if (!z4) {
                            notificationCompat$Builder.a(notificationCompat$Action);
                            notificationCompat$Builder.a(notificationCompat$Action2);
                            notification.deleteIntent = a2;
                        }
                        notificationCompat$Builder.g = b;
                        notificationCompat$Builder.d(z4);
                        return Unit.a;
                    }
                });
                NotificationFactoryKt.c(new NotificationManagerCompat(this), ((Number) c2.j).intValue(), (Notification) c2.k);
                return Unit.a;
            }
        }
        firebaseNotificationService$handleTransferInvite$1 = new FirebaseNotificationService$handleTransferInvite$1(this, continuationImpl);
        Object obj2 = firebaseNotificationService$handleTransferInvite$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = firebaseNotificationService$handleTransferInvite$1.r;
        boolean z3 = true;
        if (i == 0) {
        }
        String str32 = peerMessageBody$TransferInvite2.m;
        metadata = peerMessageBody$TransferInvite2.n;
        if (metadata == null) {
        }
        final Metadata metadata22 = metadata;
        if (i2 == 0) {
        }
        NotificationFactory notificationFactory2 = this.r;
        notificationFactory2.getClass();
        Context context2 = notificationFactory2.a;
        peer2.getClass();
        str32.getClass();
        int hashCode2 = "transferInvite:".concat(str32).hashCode();
        Intent intent2 = new Intent(context2, (Class<?>) MainActivity.class);
        intent2.addFlags(603979776);
        final PendingIntent b2 = NotificationFactoryKt.b(context2, intent2, 0, 4);
        String str42 = TransferNotificationBroadcastReceiver.a;
        PeerId c3 = peer2.c();
        context2.getClass();
        PendingIntent a3 = NotificationFactoryKt.a(context2, TransferNotificationBroadcastReceiver.Companion.a(context2, TransferNotificationBroadcastReceiver.a, hashCode2, str32, metadata22, c3), str32);
        int i52 = Colors.a;
        SpannableString spannableString3 = new SpannableString("Accept");
        spannableString3.setSpan(new ForegroundColorSpan(i52), 0, spannableString3.length(), 0);
        final NotificationCompat$Action notificationCompat$Action3 = new NotificationCompat$Action((IconCompat) null, spannableString3, a3);
        final PendingIntent a22 = NotificationFactoryKt.a(context2, TransferNotificationBroadcastReceiver.Companion.a(context2, TransferNotificationBroadcastReceiver.b, hashCode2, str32, metadata22, peer2.c()), str32);
        int i62 = Colors.b;
        SpannableString spannableString22 = new SpannableString("Decline");
        spannableString22.setSpan(new ForegroundColorSpan(i62), 0, spannableString22.length(), 0);
        final NotificationCompat$Action notificationCompat$Action22 = new NotificationCompat$Action((IconCompat) null, spannableString22, a22);
        final boolean z22 = z3;
        Pair c22 = notificationFactory2.c(hashCode2, NotificationChannels.a, peer2, new Function1() { // from class: net.blip.android.notifications.f
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj22) {
                String a32;
                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj22;
                notificationCompat$Builder.getClass();
                Notification notification = notificationCompat$Builder.A;
                Peer peer4 = Peer.this;
                boolean z32 = peer4 instanceof Peer.User;
                Metadata metadata3 = metadata22;
                if (z32) {
                    a32 = ((Peer.User) peer4).j.n;
                } else if (peer4 instanceof Peer.Device) {
                    a32 = String_formatAsKt.a(Metadata_DerivedKt.d(metadata3));
                } else {
                    k8.e();
                    return null;
                }
                notificationCompat$Builder.j(a32);
                notificationCompat$Builder.g(peer4.b());
                String str5 = Strings.a;
                notificationCompat$Builder.f(StringsKt.d(metadata3.m));
                notification.icon = R.drawable.ic_notification_waiting;
                notificationCompat$Builder.v = Colors.a;
                boolean z4 = z22;
                if (!z4) {
                    notificationCompat$Builder.a(notificationCompat$Action3);
                    notificationCompat$Builder.a(notificationCompat$Action22);
                    notification.deleteIntent = a22;
                }
                notificationCompat$Builder.g = b2;
                notificationCompat$Builder.d(z4);
                return Unit.a;
            }
        });
        NotificationFactoryKt.c(new NotificationManagerCompat(this), ((Number) c22.j).intValue(), (Notification) c22.k);
        return Unit.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
    
        if (r13 == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(Peer peer, String str, ContinuationImpl continuationImpl) {
        FirebaseNotificationService$handleTransferRevokeInvite$1 firebaseNotificationService$handleTransferRevokeInvite$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        ShortTermDiskCache shortTermDiskCache;
        Peer peer2;
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite;
        if (continuationImpl instanceof FirebaseNotificationService$handleTransferRevokeInvite$1) {
            firebaseNotificationService$handleTransferRevokeInvite$1 = (FirebaseNotificationService$handleTransferRevokeInvite$1) continuationImpl;
            int i2 = firebaseNotificationService$handleTransferRevokeInvite$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                firebaseNotificationService$handleTransferRevokeInvite$1.r = i2 - Integer.MIN_VALUE;
                Object obj = firebaseNotificationService$handleTransferRevokeInvite$1.p;
                coroutineSingletons = CoroutineSingletons.j;
                i = firebaseNotificationService$handleTransferRevokeInvite$1.r;
                Lazy lazy = this.s;
                NotificationFactory notificationFactory = this.r;
                Metadata metadata = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            peerMessageBody$TransferInvite = firebaseNotificationService$handleTransferRevokeInvite$1.o;
                            peer2 = firebaseNotificationService$handleTransferRevokeInvite$1.m;
                            ResultKt.b(obj);
                            if (peerMessageBody$TransferInvite != null) {
                                metadata = peerMessageBody$TransferInvite.n;
                            }
                            notificationFactory.getClass();
                            Pair d = NotificationFactory.d(notificationFactory, 0, NotificationChannels.b, peer2, new e(peer2, metadata), 1);
                            NotificationFactoryKt.c(new NotificationManagerCompat(this), ((Number) d.j).intValue(), (Notification) d.k);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    str = firebaseNotificationService$handleTransferRevokeInvite$1.n;
                    peer = firebaseNotificationService$handleTransferRevokeInvite$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    notificationFactory.getClass();
                    str.getClass();
                    new NotificationManagerCompat(this).b.cancel(null, "transferInvite:".concat(str).hashCode());
                    ShortTermDiskCache shortTermDiskCache2 = (ShortTermDiskCache) lazy.getValue();
                    firebaseNotificationService$handleTransferRevokeInvite$1.m = peer;
                    firebaseNotificationService$handleTransferRevokeInvite$1.n = str;
                    firebaseNotificationService$handleTransferRevokeInvite$1.r = 1;
                    shortTermDiskCache2.getClass();
                    DefaultScheduler defaultScheduler = Dispatchers.a;
                    obj = BuildersKt.e(DefaultIoScheduler.l, new ShortTermDiskCache$load$2(shortTermDiskCache2, str, null), firebaseNotificationService$handleTransferRevokeInvite$1);
                }
                PeerMessageBody$TransferInvite peerMessageBody$TransferInvite2 = (PeerMessageBody$TransferInvite) obj;
                shortTermDiskCache = (ShortTermDiskCache) lazy.getValue();
                firebaseNotificationService$handleTransferRevokeInvite$1.m = peer;
                firebaseNotificationService$handleTransferRevokeInvite$1.n = null;
                firebaseNotificationService$handleTransferRevokeInvite$1.o = peerMessageBody$TransferInvite2;
                firebaseNotificationService$handleTransferRevokeInvite$1.r = 2;
                if (shortTermDiskCache.b(str, null, firebaseNotificationService$handleTransferRevokeInvite$1) != coroutineSingletons) {
                    peer2 = peer;
                    peerMessageBody$TransferInvite = peerMessageBody$TransferInvite2;
                    if (peerMessageBody$TransferInvite != null) {
                    }
                    notificationFactory.getClass();
                    Pair d2 = NotificationFactory.d(notificationFactory, 0, NotificationChannels.b, peer2, new e(peer2, metadata), 1);
                    NotificationFactoryKt.c(new NotificationManagerCompat(this), ((Number) d2.j).intValue(), (Notification) d2.k);
                    return Unit.a;
                }
                return coroutineSingletons;
            }
        }
        firebaseNotificationService$handleTransferRevokeInvite$1 = new FirebaseNotificationService$handleTransferRevokeInvite$1(this, continuationImpl);
        Object obj2 = firebaseNotificationService$handleTransferRevokeInvite$1.p;
        coroutineSingletons = CoroutineSingletons.j;
        i = firebaseNotificationService$handleTransferRevokeInvite$1.r;
        Lazy lazy2 = this.s;
        NotificationFactory notificationFactory2 = this.r;
        Metadata metadata2 = null;
        if (i == 0) {
        }
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite22 = (PeerMessageBody$TransferInvite) obj2;
        shortTermDiskCache = (ShortTermDiskCache) lazy2.getValue();
        firebaseNotificationService$handleTransferRevokeInvite$1.m = peer;
        firebaseNotificationService$handleTransferRevokeInvite$1.n = null;
        firebaseNotificationService$handleTransferRevokeInvite$1.o = peerMessageBody$TransferInvite22;
        firebaseNotificationService$handleTransferRevokeInvite$1.r = 2;
        if (shortTermDiskCache.b(str, null, firebaseNotificationService$handleTransferRevokeInvite$1) != coroutineSingletons) {
        }
        return coroutineSingletons;
    }
}

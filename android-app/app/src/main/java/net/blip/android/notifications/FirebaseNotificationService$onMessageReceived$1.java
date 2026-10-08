package net.blip.android.notifications;

import android.os.Bundle;
import android.os.Handler;
import android.util.Base64;
import android.widget.Toast;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.firebase.messaging.RemoteMessage;
import com.squareup.wire.AnyMessage;
import com.squareup.wire.ByteArrayProtoReader32;
import defpackage.u2;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.notifications.FirebaseNotificationService;
import net.blip.libblip.Device;
import net.blip.libblip.Logger;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.User;
import net.blip.libblip.frontend.PeerMessageBody$TransferAcceptedElsewhere;
import net.blip.libblip.frontend.PeerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1;
import net.blip.libblip.frontend.PeerMessageBody$TransferDeclinedElsewhere;
import net.blip.libblip.frontend.PeerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1;
import net.blip.libblip.frontend.PeerMessageBody$TransferInvite;
import net.blip.libblip.frontend.PeerMessageBody$TransferInvite$Companion$ADAPTER$1;
import net.blip.libblip.frontend.PeerMessageBody$TransferRevokeInvite;
import net.blip.libblip.frontend.PeerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1;
import net.blip.libblip.messaging.MessageFromServer;
import net.blip.libblip.messaging.MessageFromServer$Companion$ADAPTER$1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.FirebaseNotificationService$onMessageReceived$1", f = "FirebaseNotificationService.kt", l = {66}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class FirebaseNotificationService$onMessageReceived$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ FirebaseNotificationService o;
    public final /* synthetic */ RemoteMessage p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseNotificationService$onMessageReceived$1(FirebaseNotificationService firebaseNotificationService, RemoteMessage remoteMessage, Continuation continuation) {
        super(2, continuation);
        this.o = firebaseNotificationService;
        this.p = remoteMessage;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FirebaseNotificationService$onMessageReceived$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new FirebaseNotificationService$onMessageReceived$1(this.o, this.p, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0234 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0235 A[RETURN] */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        MessageFromServer messageFromServer;
        AnyMessage anyMessage;
        PeerId peerId;
        String str;
        final Peer user;
        Object f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        final int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        final FirebaseNotificationService firebaseNotificationService = this.o;
        NotificationFactory notificationFactory = firebaseNotificationService.r;
        this.n = 1;
        Logger logger = firebaseNotificationService.u;
        RemoteMessage remoteMessage = this.p;
        final int i3 = 0;
        if (remoteMessage.k == null) {
            Bundle bundle = remoteMessage.j;
            ?? simpleArrayMap = new SimpleArrayMap(0);
            for (String str2 : bundle.keySet()) {
                Object obj2 = bundle.get(str2);
                if (obj2 instanceof String) {
                    String str3 = (String) obj2;
                    if (!str2.startsWith("google.") && !str2.startsWith("gcm.") && !str2.equals("from") && !str2.equals("message_type") && !str2.equals("collapse_key")) {
                        simpleArrayMap.put(str2, str3);
                    }
                }
            }
            remoteMessage.k = simpleArrayMap;
        }
        String str4 = (String) new HashMap(remoteMessage.k).get("data");
        if (str4 == null) {
            logger.getClass();
            Logger.e("remote message data is null", new Pair[0]);
        } else {
            try {
                MessageFromServer$Companion$ADAPTER$1 messageFromServer$Companion$ADAPTER$1 = MessageFromServer.q;
                byte[] decode = Base64.decode(str4, 0);
                decode.getClass();
                messageFromServer$Companion$ADAPTER$1.getClass();
                messageFromServer = (MessageFromServer) messageFromServer$Companion$ADAPTER$1.b(new ByteArrayProtoReader32(decode.length, decode));
                anyMessage = messageFromServer.m;
                peerId = messageFromServer.n;
            } catch (IOException e) {
                Pair[] pairArr = {new Pair("exception", e)};
                logger.getClass();
                Logger.e("parsing protobuf", pairArr);
            } catch (IllegalArgumentException e2) {
                Pair[] pairArr2 = {new Pair("exception", e2)};
                logger.getClass();
                Logger.e("decoding base64", pairArr2);
            }
            if (anyMessage == null) {
                logger.getClass();
                Logger.e("message missing body", new Pair[0]);
            } else {
                String str5 = anyMessage.m;
                User user2 = messageFromServer.o;
                if (user2 == null) {
                    logger.getClass();
                    Logger.e("message missing sender_user", new Pair[0]);
                } else {
                    Map map = user2.x;
                    if (peerId != null) {
                        str = peerId.n;
                    } else {
                        str = null;
                    }
                    Device device = (Device) map.get(str);
                    if (device == null) {
                        logger.getClass();
                        Logger.e("senderUser missing device. sender_peer_id: " + peerId, new Pair[0]);
                    } else {
                        if (user2.s) {
                            user = new Peer.Device(device, user2.m);
                        } else {
                            user = new Peer.User(user2);
                        }
                        if (remoteMessage.a() != 1) {
                            Pair[] pairArr3 = {new Pair("priority", new Integer(remoteMessage.a()))};
                            logger.getClass();
                            Logger.l("handling notification without high priority", pairArr3);
                        }
                        Pair[] pairArr4 = {new Pair("typeUrl", str5)};
                        logger.getClass();
                        Logger.h("handling notification body", pairArr4);
                        PeerMessageBody$TransferInvite$Companion$ADAPTER$1 peerMessageBody$TransferInvite$Companion$ADAPTER$1 = PeerMessageBody$TransferInvite.o;
                        if (Intrinsics.a(str5, peerMessageBody$TransferInvite$Companion$ADAPTER$1.c)) {
                            f = firebaseNotificationService.e(user, (PeerMessageBody$TransferInvite) anyMessage.b(peerMessageBody$TransferInvite$Companion$ADAPTER$1), this);
                        } else {
                            PeerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1 peerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1 = PeerMessageBody$TransferAcceptedElsewhere.n;
                            if (Intrinsics.a(str5, peerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1.c)) {
                                String str6 = ((PeerMessageBody$TransferAcceptedElsewhere) anyMessage.b(peerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1)).m;
                                notificationFactory.getClass();
                                str6.getClass();
                                new NotificationManagerCompat(firebaseNotificationService).b.cancel(null, "transferInvite:".concat(str6).hashCode());
                                new Handler(firebaseNotificationService.getApplicationContext().getMainLooper()).post(new Runnable() { // from class: n8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i4 = i3;
                                        Peer peer = user;
                                        FirebaseNotificationService firebaseNotificationService2 = firebaseNotificationService;
                                        switch (i4) {
                                            case 0:
                                                int i5 = FirebaseNotificationService.v;
                                                Toast.makeText(firebaseNotificationService2, "Transfer accepted on " + peer.b(), 0).show();
                                                return;
                                            default:
                                                int i6 = FirebaseNotificationService.v;
                                                Toast.makeText(firebaseNotificationService2, "Transfer declined on " + peer.b(), 0).show();
                                                return;
                                        }
                                    }
                                });
                            } else {
                                PeerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1 peerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1 = PeerMessageBody$TransferDeclinedElsewhere.n;
                                if (Intrinsics.a(str5, peerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1.c)) {
                                    String str7 = ((PeerMessageBody$TransferDeclinedElsewhere) anyMessage.b(peerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1)).m;
                                    notificationFactory.getClass();
                                    str7.getClass();
                                    new NotificationManagerCompat(firebaseNotificationService).b.cancel(null, "transferInvite:".concat(str7).hashCode());
                                    new Handler(firebaseNotificationService.getApplicationContext().getMainLooper()).post(new Runnable() { // from class: n8
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i4 = i2;
                                            Peer peer = user;
                                            FirebaseNotificationService firebaseNotificationService2 = firebaseNotificationService;
                                            switch (i4) {
                                                case 0:
                                                    int i5 = FirebaseNotificationService.v;
                                                    Toast.makeText(firebaseNotificationService2, "Transfer accepted on " + peer.b(), 0).show();
                                                    return;
                                                default:
                                                    int i6 = FirebaseNotificationService.v;
                                                    Toast.makeText(firebaseNotificationService2, "Transfer declined on " + peer.b(), 0).show();
                                                    return;
                                            }
                                        }
                                    });
                                } else {
                                    PeerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1 peerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1 = PeerMessageBody$TransferRevokeInvite.n;
                                    if (Intrinsics.a(str5, peerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1.c)) {
                                        f = firebaseNotificationService.f(user, ((PeerMessageBody$TransferRevokeInvite) anyMessage.b(peerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1)).m, this);
                                    } else {
                                        Logger.e("unsupported notification body", new Pair("typeUrl", str5));
                                    }
                                }
                            }
                        }
                        if (f != coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        return unit;
                    }
                }
            }
        }
        f = unit;
        if (f != coroutineSingletons) {
        }
    }
}

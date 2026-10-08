package net.blip.android.notifications;

import android.content.Intent;
import bsarchive.Metadata;
import bsarchive.Metadata$Companion$ADAPTER$1;
import com.squareup.wire.ByteArrayProtoReader32;
import defpackage.jb;
import defpackage.u2;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.event.TransferRespondFromNotification;
import net.blip.libblip.frontend.TransferNotificationResponse;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferNotificationBroadcastReceiverKt {
    public static final TransferRespondFromNotification a(boolean z, Intent intent) {
        String stringExtra = intent.getStringExtra(TransferNotificationBroadcastReceiver.h);
        if (stringExtra != null) {
            String stringExtra2 = intent.getStringExtra(TransferNotificationBroadcastReceiver.g);
            if (stringExtra2 != null) {
                try {
                    PeerId a = PeerId_DerivedKt.a(stringExtra2);
                    byte[] byteArrayExtra = intent.getByteArrayExtra(TransferNotificationBroadcastReceiver.i);
                    if (byteArrayExtra != null) {
                        try {
                            Metadata$Companion$ADAPTER$1 metadata$Companion$ADAPTER$1 = Metadata.o;
                            metadata$Companion$ADAPTER$1.getClass();
                            Metadata metadata = (Metadata) metadata$Companion$ADAPTER$1.b(new ByteArrayProtoReader32(byteArrayExtra.length, byteArrayExtra));
                            ByteString byteString = ByteString.m;
                            return new TransferRespondFromNotification(stringExtra, new TransferNotificationResponse(z, a, metadata, byteString), byteString);
                        } catch (Exception e) {
                            u2.g(jb.f("parsing KEY_EXPECTED_STUB bytes: ", e.getMessage()));
                            return null;
                        }
                    }
                    u2.g("Intent.KEY_EXPECTED_STUB missing or not ByteArray");
                    return null;
                } catch (Exception e2) {
                    u2.g(jb.f("parsing Intent.KEY_SENDER_ID: ", e2.getMessage()));
                    return null;
                }
            }
            u2.g("Intent.KEY_SENDER_ID missing or not String");
            return null;
        }
        u2.g("Intent.KEY_TRANSFER_ID missing or not String");
        return null;
    }
}

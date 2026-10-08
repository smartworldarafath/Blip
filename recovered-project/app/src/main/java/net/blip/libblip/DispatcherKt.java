package net.blip.libblip;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;
import kotlin.Result;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.event.InsertAnalyticsEvent;
import net.blip.libblip.event.TransferAddContentRequested;
import net.blip.libblip.event.TransferCreateRequested;
import net.blip.libblip.event.TransferInviteRequested;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DispatcherKt {
    public static final Serializable a(Function1 function1, PeerId peerId, List list, String str) {
        function1.getClass();
        list.getClass();
        str.getClass();
        try {
            if (!list.isEmpty()) {
                String uuid = UUID.randomUUID().toString();
                uuid.getClass();
                ByteString byteString = ByteString.m;
                function1.b(new TransferCreateRequested(uuid, peerId, byteString));
                if (!list.isEmpty()) {
                    function1.b(new TransferAddContentRequested(uuid, list, byteString));
                }
                if (peerId != null) {
                    function1.b(new TransferInviteRequested(uuid, peerId));
                }
                MapBuilder mapBuilder = new MapBuilder();
                mapBuilder.put("transfer_id", uuid);
                mapBuilder.put("origin", str);
                if (peerId != null) {
                    mapBuilder.put("peer_user_id", peerId.m);
                    mapBuilder.put("peer_device_id", peerId.n);
                }
                function1.b(new InsertAnalyticsEvent("TransferCreate", mapBuilder.b(), byteString));
                return uuid;
            }
            throw new IllegalStateException("locations must not be empty");
        } catch (Throwable th) {
            return new Result.Failure(th);
        }
    }
}

package net.blip.android.notifications;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.blip.libblip.Peer;
import net.blip.libblip.frontend.PeerMessageBody$TransferInvite;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.FirebaseNotificationService", f = "FirebaseNotificationService.kt", l = {151}, m = "handleTransferInvite", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FirebaseNotificationService$handleTransferInvite$1 extends ContinuationImpl {
    public Peer m;
    public PeerMessageBody$TransferInvite n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ FirebaseNotificationService q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseNotificationService$handleTransferInvite$1(FirebaseNotificationService firebaseNotificationService, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = firebaseNotificationService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        int i = FirebaseNotificationService.v;
        return this.q.e(null, null, this);
    }
}

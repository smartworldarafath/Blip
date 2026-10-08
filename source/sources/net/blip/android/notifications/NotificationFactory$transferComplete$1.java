package net.blip.android.notifications;

import android.net.Uri;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.blip.libblip.Peer;
import net.blip.libblip.frontend.Transfer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.NotificationFactory", f = "NotificationFactory.kt", l = {454, 457, 480}, m = "transferComplete", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class NotificationFactory$transferComplete$1 extends ContinuationImpl {
    public Peer m;
    public Transfer n;
    public List o;
    public Uri p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ NotificationFactory s;
    public int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationFactory$transferComplete$1(NotificationFactory notificationFactory, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.s = notificationFactory;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.r = obj;
        this.t |= Integer.MIN_VALUE;
        return this.s.e(null, null, this);
    }
}

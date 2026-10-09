package net.blip.android.notifications;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.FirebaseNotificationTokenManager$observeAuthChanges$4", f = "FirebaseNotificationTokenManager.kt", l = {27, 33}, m = "emit", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ FirebaseNotificationTokenManager$observeAuthChanges$4 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1(FirebaseNotificationTokenManager$observeAuthChanges$4 firebaseNotificationTokenManager$observeAuthChanges$4, Continuation continuation) {
        super(continuation);
        this.n = firebaseNotificationTokenManager$observeAuthChanges$4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.r(null, this);
    }
}

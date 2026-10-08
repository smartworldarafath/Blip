package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LinkStateInteractionSourceObserver {
    public final InteractionSource a;
    public final MutableIntState b = SnapshotIntStateKt.a(0);

    public LinkStateInteractionSourceObserver(MutableInteractionSource mutableInteractionSource) {
        this.a = mutableInteractionSource;
    }
}

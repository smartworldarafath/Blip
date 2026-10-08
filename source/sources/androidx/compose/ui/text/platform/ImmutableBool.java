package androidx.compose.ui.text.platform;

import androidx.compose.runtime.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ImmutableBool implements State<Boolean> {
    public final boolean j;

    public ImmutableBool(boolean z) {
        this.j = z;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return Boolean.valueOf(this.j);
    }
}

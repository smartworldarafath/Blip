package androidx.compose.ui.text.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultImpl implements EmojiCompatStatusDelegate {
    public State a;

    public final State a() {
        EmojiCompat a = EmojiCompat.a();
        if (a.d() == 1) {
            return new ImmutableBool(true);
        }
        final MutableState g = SnapshotStateKt.g(Boolean.FALSE);
        a.k(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void a() {
                this.a = EmojiCompatStatus_androidKt.a;
            }

            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void b() {
                ((SnapshotMutableStateImpl) MutableState.this).setValue(Boolean.TRUE);
                this.a = new ImmutableBool(true);
            }
        });
        return g;
    }
}

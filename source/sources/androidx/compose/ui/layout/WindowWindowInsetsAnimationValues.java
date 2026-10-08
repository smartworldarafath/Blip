package androidx.compose.ui.layout;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowWindowInsetsAnimationValues {
    public final RectRulers f;
    public final RectRulers g;
    public final MutableState a = SnapshotStateKt.g(Boolean.TRUE);
    public final MutableState b = SnapshotStateKt.g(Boolean.FALSE);
    public final MutableFloatState c = PrimitiveSnapshotStateKt.a(0.0f);
    public final MutableLongState d = SnapshotLongStateKt.a(0);
    public final MutableFloatState e = PrimitiveSnapshotStateKt.a(1.0f);
    public long h = -1;
    public long i = -1;
    public long j = -1;
    public long k = -1;

    public WindowWindowInsetsAnimationValues(String str) {
        this.f = new RectRulersImpl(str.concat(" source"));
        this.g = new RectRulersImpl(str.concat(" target"));
    }
}

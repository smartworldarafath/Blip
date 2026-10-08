package androidx.compose.animation;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TransformOrigin;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransformScopeImpl {
    public final MutableState a;
    public final MutableFloatState b;
    public final MutableState c;
    public final MutableFloatState d;
    public final MutableState e;
    public final MutableState f;
    public final MutableState g;
    public final MutableState h;

    public TransformScopeImpl() {
        Boolean bool = Boolean.FALSE;
        this.a = SnapshotStateKt.g(bool);
        this.b = PrimitiveSnapshotStateKt.a(1.0f);
        this.c = SnapshotStateKt.g(bool);
        this.d = PrimitiveSnapshotStateKt.a(1.0f);
        this.e = SnapshotStateKt.g(bool);
        this.f = SnapshotStateKt.g(new TransformOrigin(TransformOrigin.b));
        this.g = SnapshotStateKt.g(bool);
        this.h = SnapshotStateKt.g(new Color(Color.g));
    }
}

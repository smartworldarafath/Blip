package androidx.compose.animation;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentTransform {
    public final EnterTransition a;
    public final ExitTransition b;
    public final MutableFloatState c;
    public final SizeTransform d;

    public ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f, SizeTransform sizeTransform) {
        this.a = enterTransition;
        this.b = exitTransition;
        this.c = PrimitiveSnapshotStateKt.a(f);
        this.d = sizeTransform;
    }
}

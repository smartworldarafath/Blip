package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentPainterNode extends AbstractContentPainterNode {
    public final AsyncImagePainter D;

    public ContentPainterNode(AsyncImagePainter asyncImagePainter, Alignment alignment, ContentScale contentScale, String str, ConstraintsSizeResolver constraintsSizeResolver) {
        this.x = alignment;
        this.y = contentScale;
        this.z = 1.0f;
        this.A = true;
        this.B = str;
        this.C = constraintsSizeResolver;
        this.D = asyncImagePainter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        CoroutineScope M0 = M0();
        AsyncImagePainter asyncImagePainter = this.D;
        asyncImagePainter.u = M0;
        asyncImagePainter.c();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.D.b();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        this.D.n(null);
    }
}

package androidx.compose.material.icons.rounded;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MoreVertKt {
    public static ImageVector a;

    public static final ImageVector a() {
        ImageVector imageVector = a;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Rounded.MoreVert", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.a;
        SolidColor solidColor = new SolidColor(Color.b);
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.i(12.0f, 8.0f);
        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder.k(-0.9f, -2.0f, -2.0f, -2.0f);
        pathBuilder.k(-2.0f, 0.9f, -2.0f, 2.0f);
        pathBuilder.k(0.9f, 2.0f, 2.0f, 2.0f);
        pathBuilder.b();
        pathBuilder.i(12.0f, 10.0f);
        pathBuilder.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        pathBuilder.k(0.9f, 2.0f, 2.0f, 2.0f);
        pathBuilder.k(2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder.k(-0.9f, -2.0f, -2.0f, -2.0f);
        pathBuilder.b();
        pathBuilder.i(12.0f, 16.0f);
        pathBuilder.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        pathBuilder.k(0.9f, 2.0f, 2.0f, 2.0f);
        pathBuilder.k(2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder.k(-0.9f, -2.0f, -2.0f, -2.0f);
        pathBuilder.b();
        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
        ImageVector d = builder.d();
        a = d;
        return d;
    }
}

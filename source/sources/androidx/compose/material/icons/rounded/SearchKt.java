package androidx.compose.material.icons.rounded;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SearchKt {
    public static ImageVector a;

    public static final ImageVector a() {
        ImageVector imageVector = a;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Rounded.Search", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.a;
        SolidColor solidColor = new SolidColor(Color.b);
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.i(15.5f, 14.0f);
        pathBuilder.f(-0.79f);
        pathBuilder.h(-0.28f, -0.27f);
        pathBuilder.d(1.2f, -1.4f, 1.82f, -3.31f, 1.48f, -5.34f);
        pathBuilder.d(-0.47f, -2.78f, -2.79f, -5.0f, -5.59f, -5.34f);
        pathBuilder.d(-4.23f, -0.52f, -7.79f, 3.04f, -7.27f, 7.27f);
        pathBuilder.d(0.34f, 2.8f, 2.56f, 5.12f, 5.34f, 5.59f);
        pathBuilder.d(2.03f, 0.34f, 3.94f, -0.28f, 5.34f, -1.48f);
        pathBuilder.h(0.27f, 0.28f);
        pathBuilder.m(0.79f);
        pathBuilder.h(4.25f, 4.25f);
        pathBuilder.d(0.41f, 0.41f, 1.08f, 0.41f, 1.49f, 0.0f);
        pathBuilder.d(0.41f, -0.41f, 0.41f, -1.08f, 0.0f, -1.49f);
        pathBuilder.g(15.5f, 14.0f);
        pathBuilder.b();
        pathBuilder.i(9.5f, 14.0f);
        pathBuilder.c(7.01f, 14.0f, 5.0f, 11.99f, 5.0f, 9.5f);
        pathBuilder.j(7.01f, 5.0f, 9.5f, 5.0f);
        pathBuilder.j(14.0f, 7.01f, 14.0f, 9.5f);
        pathBuilder.j(11.99f, 14.0f, 9.5f, 14.0f);
        pathBuilder.b();
        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
        ImageVector d = builder.d();
        a = d;
        return d;
    }
}

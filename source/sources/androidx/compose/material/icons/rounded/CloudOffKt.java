package androidx.compose.material.icons.rounded;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CloudOffKt {
    public static ImageVector a;

    public static final ImageVector a() {
        ImageVector imageVector = a;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Rounded.CloudOff", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.a;
        SolidColor solidColor = new SolidColor(Color.b);
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.i(24.0f, 15.0f);
        pathBuilder.d(0.0f, -2.64f, -2.05f, -4.78f, -4.65f, -4.96f);
        pathBuilder.c(18.67f, 6.59f, 15.64f, 4.0f, 12.0f, 4.0f);
        pathBuilder.d(-1.33f, 0.0f, -2.57f, 0.36f, -3.65f, 0.97f);
        pathBuilder.h(1.49f, 1.49f);
        pathBuilder.c(10.51f, 6.17f, 11.23f, 6.0f, 12.0f, 6.0f);
        pathBuilder.d(3.04f, 0.0f, 5.5f, 2.46f, 5.5f, 5.5f);
        pathBuilder.m(0.5f);
        pathBuilder.e(19.0f);
        pathBuilder.d(1.66f, 0.0f, 3.0f, 1.34f, 3.0f, 3.0f);
        pathBuilder.d(0.0f, 0.99f, -0.48f, 1.85f, -1.21f, 2.4f);
        pathBuilder.h(1.41f, 1.41f);
        pathBuilder.d(1.09f, -0.92f, 1.8f, -2.27f, 1.8f, -3.81f);
        pathBuilder.b();
        pathBuilder.i(3.71f, 4.56f);
        pathBuilder.d(-0.39f, 0.39f, -0.39f, 1.02f, 0.0f, 1.41f);
        pathBuilder.h(2.06f, 2.06f);
        pathBuilder.f(-0.42f);
        pathBuilder.d(-3.28f, 0.35f, -5.76f, 3.34f, -5.29f, 6.79f);
        pathBuilder.c(0.46f, 17.84f, 3.19f, 20.0f, 6.22f, 20.0f);
        pathBuilder.f(11.51f);
        pathBuilder.h(1.29f, 1.29f);
        pathBuilder.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
        pathBuilder.d(0.39f, -0.39f, 0.39f, -1.02f, 0.0f, -1.41f);
        pathBuilder.g(5.12f, 4.56f);
        pathBuilder.d(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, 0.0f);
        pathBuilder.b();
        pathBuilder.i(6.0f, 18.0f);
        pathBuilder.d(-2.21f, 0.0f, -4.0f, -1.79f, -4.0f, -4.0f);
        pathBuilder.k(1.79f, -4.0f, 4.0f, -4.0f);
        pathBuilder.f(1.73f);
        pathBuilder.h(8.0f, 8.0f);
        pathBuilder.e(6.0f);
        pathBuilder.b();
        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
        ImageVector d = builder.d();
        a = d;
        return d;
    }
}

package androidx.compose.material.icons.automirrored.rounded;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HelpOutlineKt {
    public static ImageVector a;

    public static final ImageVector a() {
        ImageVector imageVector = a;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("AutoMirrored.Rounded.HelpOutline", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
        int i = VectorKt.a;
        SolidColor solidColor = new SolidColor(Color.b);
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.i(12.0f, 2.0f);
        pathBuilder.c(6.48f, 2.0f, 2.0f, 6.48f, 2.0f, 12.0f);
        pathBuilder.k(4.48f, 10.0f, 10.0f, 10.0f);
        pathBuilder.k(10.0f, -4.48f, 10.0f, -10.0f);
        pathBuilder.j(17.52f, 2.0f, 12.0f, 2.0f);
        pathBuilder.b();
        pathBuilder.i(12.0f, 20.0f);
        pathBuilder.d(-4.41f, 0.0f, -8.0f, -3.59f, -8.0f, -8.0f);
        pathBuilder.k(3.59f, -8.0f, 8.0f, -8.0f);
        pathBuilder.k(8.0f, 3.59f, 8.0f, 8.0f);
        pathBuilder.k(-3.59f, 8.0f, -8.0f, 8.0f);
        pathBuilder.b();
        pathBuilder.i(11.0f, 16.0f);
        pathBuilder.f(2.0f);
        pathBuilder.m(2.0f);
        pathBuilder.f(-2.0f);
        pathBuilder.b();
        pathBuilder.i(12.61f, 6.04f);
        pathBuilder.d(-2.06f, -0.3f, -3.88f, 0.97f, -4.43f, 2.79f);
        pathBuilder.d(-0.18f, 0.58f, 0.26f, 1.17f, 0.87f, 1.17f);
        pathBuilder.f(0.2f);
        pathBuilder.d(0.41f, 0.0f, 0.74f, -0.29f, 0.88f, -0.67f);
        pathBuilder.d(0.32f, -0.89f, 1.27f, -1.5f, 2.3f, -1.28f);
        pathBuilder.d(0.95f, 0.2f, 1.65f, 1.13f, 1.57f, 2.1f);
        pathBuilder.d(-0.1f, 1.34f, -1.62f, 1.63f, -2.45f, 2.88f);
        pathBuilder.d(0.0f, 0.01f, -0.01f, 0.01f, -0.01f, 0.02f);
        pathBuilder.d(-0.01f, 0.02f, -0.02f, 0.03f, -0.03f, 0.05f);
        pathBuilder.d(-0.09f, 0.15f, -0.18f, 0.32f, -0.25f, 0.5f);
        pathBuilder.d(-0.01f, 0.03f, -0.03f, 0.05f, -0.04f, 0.08f);
        pathBuilder.d(-0.01f, 0.02f, -0.01f, 0.04f, -0.02f, 0.07f);
        pathBuilder.d(-0.12f, 0.34f, -0.2f, 0.75f, -0.2f, 1.25f);
        pathBuilder.f(2.0f);
        pathBuilder.d(0.0f, -0.42f, 0.11f, -0.77f, 0.28f, -1.07f);
        pathBuilder.d(0.02f, -0.03f, 0.03f, -0.06f, 0.05f, -0.09f);
        pathBuilder.d(0.08f, -0.14f, 0.18f, -0.27f, 0.28f, -0.39f);
        pathBuilder.d(0.01f, -0.01f, 0.02f, -0.03f, 0.03f, -0.04f);
        pathBuilder.d(0.1f, -0.12f, 0.21f, -0.23f, 0.33f, -0.34f);
        pathBuilder.d(0.96f, -0.91f, 2.26f, -1.65f, 1.99f, -3.56f);
        pathBuilder.d(-0.24f, -1.74f, -1.61f, -3.21f, -3.35f, -3.47f);
        pathBuilder.b();
        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
        ImageVector d = builder.d();
        a = d;
        return d;
    }
}

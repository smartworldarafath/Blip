package androidx.compose.material.icons.rounded;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MusicNoteKt {
    public static ImageVector a;

    public static final ImageVector a() {
        ImageVector imageVector = a;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Rounded.MusicNote", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.a;
        SolidColor solidColor = new SolidColor(Color.b);
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.i(12.0f, 5.0f);
        pathBuilder.m(8.55f);
        pathBuilder.d(-0.94f, -0.54f, -2.1f, -0.75f, -3.33f, -0.32f);
        pathBuilder.d(-1.34f, 0.48f, -2.37f, 1.67f, -2.61f, 3.07f);
        pathBuilder.d(-0.46f, 2.74f, 1.86f, 5.08f, 4.59f, 4.65f);
        pathBuilder.d(1.96f, -0.31f, 3.35f, -2.11f, 3.35f, -4.1f);
        pathBuilder.l(7.0f);
        pathBuilder.f(2.0f);
        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder.k(-0.9f, -2.0f, -2.0f, -2.0f);
        pathBuilder.f(-2.0f);
        pathBuilder.d(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        pathBuilder.b();
        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
        ImageVector d = builder.d();
        a = d;
        return d;
    }
}

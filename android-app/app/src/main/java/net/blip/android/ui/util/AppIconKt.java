package net.blip.android.ui.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.accompanist.drawablepainter.DrawablePainter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AppIconKt {
    public static final DrawablePainter a(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            Drawable loadIcon = context.getApplicationInfo().loadIcon(context.getPackageManager());
            loadIcon.getClass();
            K = new DrawablePainter(loadIcon);
            gapComposer.g0(K);
        }
        return (DrawablePainter) K;
    }
}

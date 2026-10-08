package androidx.compose.foundation;

import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.ui.unit.Density;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EdgeEffectCompat {
    public static float a(EdgeEffect edgeEffect, float f, float f2, Density density) {
        float f3 = EdgeEffectCompat_androidKt.a;
        double density2 = density.getDensity() * 386.0878f * 160.0f * 0.84f;
        double d = EdgeEffectCompat_androidKt.a * density2;
        if (((float) (Math.exp((EdgeEffectCompat_androidKt.b / EdgeEffectCompat_androidKt.c) * Math.log((Math.abs(f) * 0.35f) / d)) * d)) <= b(edgeEffect) * f2) {
            c(edgeEffect, MathKt.b(f));
            return f;
        }
        return 0.0f;
    }

    public static float b(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.b(edgeEffect);
        }
        return 0.0f;
    }

    public static void c(EdgeEffect edgeEffect, int i) {
        if (Build.VERSION.SDK_INT >= 31) {
            edgeEffect.onAbsorb(i);
        } else if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(i);
        }
    }

    public static float d(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.c(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    public static void e(EdgeEffect edgeEffect, float f) {
        if (edgeEffect instanceof GlowEdgeEffectCompat) {
            GlowEdgeEffectCompat glowEdgeEffectCompat = (GlowEdgeEffectCompat) edgeEffect;
            float f2 = glowEdgeEffectCompat.b + f;
            glowEdgeEffectCompat.b = f2;
            if (Math.abs(f2) > glowEdgeEffectCompat.a) {
                glowEdgeEffectCompat.onRelease();
                return;
            }
            return;
        }
        edgeEffect.onRelease();
    }
}

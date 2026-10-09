package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EdgeEffectWrapper {
    public final Context a;
    public final int b;
    public long c = 0;
    public EdgeEffect d;
    public EdgeEffect e;
    public EdgeEffect f;
    public EdgeEffect g;
    public EdgeEffect h;
    public EdgeEffect i;
    public EdgeEffect j;
    public EdgeEffect k;

    public EdgeEffectWrapper(Context context, int i) {
        this.a = context;
        this.b = i;
    }

    public static boolean f(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    public static boolean g(EdgeEffect edgeEffect) {
        boolean z = false;
        if (edgeEffect == null) {
            return false;
        }
        if (EdgeEffectCompat.b(edgeEffect) == 0.0f) {
            z = true;
        }
        return !z;
    }

    public final EdgeEffect a(Orientation orientation) {
        EdgeEffect glowEdgeEffectCompat;
        int i = Build.VERSION.SDK_INT;
        Context context = this.a;
        if (i >= 31) {
            glowEdgeEffectCompat = Api31Impl.a(context);
        } else {
            glowEdgeEffectCompat = new GlowEdgeEffectCompat(context);
        }
        glowEdgeEffectCompat.setColor(this.b);
        if (!IntSize.a(this.c, 0L)) {
            Orientation orientation2 = Orientation.j;
            long j = this.c;
            if (orientation == orientation2) {
                glowEdgeEffectCompat.setSize((int) (j >> 32), (int) (j & 4294967295L));
                return glowEdgeEffectCompat;
            }
            glowEdgeEffectCompat.setSize((int) (4294967295L & j), (int) (j >> 32));
        }
        return glowEdgeEffectCompat;
    }

    public final EdgeEffect b() {
        EdgeEffect edgeEffect = this.e;
        if (edgeEffect == null) {
            EdgeEffect a = a(Orientation.j);
            this.e = a;
            return a;
        }
        return edgeEffect;
    }

    public final EdgeEffect c() {
        EdgeEffect edgeEffect = this.f;
        if (edgeEffect == null) {
            EdgeEffect a = a(Orientation.k);
            this.f = a;
            return a;
        }
        return edgeEffect;
    }

    public final EdgeEffect d() {
        EdgeEffect edgeEffect = this.g;
        if (edgeEffect == null) {
            EdgeEffect a = a(Orientation.k);
            this.g = a;
            return a;
        }
        return edgeEffect;
    }

    public final EdgeEffect e() {
        EdgeEffect edgeEffect = this.d;
        if (edgeEffect == null) {
            EdgeEffect a = a(Orientation.j);
            this.d = a;
            return a;
        }
        return edgeEffect;
    }
}

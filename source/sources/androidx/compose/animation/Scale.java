package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Scale {
    public final float a;
    public final long b;
    public final FiniteAnimationSpec c;

    public Scale(float f, long j, FiniteAnimationSpec finiteAnimationSpec) {
        this.a = f;
        this.b = j;
        this.c = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        if (Float.compare(this.a, scale.a) == 0 && TransformOrigin.a(this.b, scale.b) && Intrinsics.a(this.c, scale.c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Float.hashCode(this.a) * 31;
        int i = TransformOrigin.c;
        return this.c.hashCode() + jb.a(hashCode, 31, this.b);
    }

    public final String toString() {
        return "Scale(scale=" + this.a + ", transformOrigin=" + TransformOrigin.b(this.b) + ", animationSpec=" + this.c + ")";
    }
}

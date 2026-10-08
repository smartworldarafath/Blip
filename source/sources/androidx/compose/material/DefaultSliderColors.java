package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultSliderColors implements SliderColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;

    public DefaultSliderColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
        this.j = j10;
    }

    public final MutableState a(boolean z, boolean z2, Composer composer) {
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1491563694);
        if (z) {
            if (z2) {
                j = this.g;
            } else {
                j = this.h;
            }
        } else if (z2) {
            j = this.i;
        } else {
            j = this.j;
        }
        MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
        gapComposer.p(false);
        return k;
    }

    public final MutableState b(boolean z, boolean z2, Composer composer) {
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(1575395620);
        if (z) {
            if (z2) {
                j = this.c;
            } else {
                j = this.d;
            }
        } else if (z2) {
            j = this.e;
        } else {
            j = this.f;
        }
        MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
        gapComposer.p(false);
        return k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultSliderColors.class != obj.getClass()) {
            return false;
        }
        DefaultSliderColors defaultSliderColors = (DefaultSliderColors) obj;
        if (Color.c(this.a, defaultSliderColors.a) && Color.c(this.b, defaultSliderColors.b) && Color.c(this.c, defaultSliderColors.c) && Color.c(this.d, defaultSliderColors.d) && Color.c(this.e, defaultSliderColors.e) && Color.c(this.f, defaultSliderColors.f) && Color.c(this.g, defaultSliderColors.g) && Color.c(this.h, defaultSliderColors.h) && Color.c(this.i, defaultSliderColors.i) && Color.c(this.j, defaultSliderColors.j)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.j) + jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i);
    }
}

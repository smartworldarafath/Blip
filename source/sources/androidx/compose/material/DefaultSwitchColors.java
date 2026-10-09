package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultSwitchColors implements SwitchColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    public DefaultSwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
    }

    @Override // androidx.compose.material.SwitchColors
    public final MutableState a(boolean z, Composer composer) {
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-66424183);
        if (z) {
            j = this.a;
        } else {
            j = this.c;
        }
        MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
        gapComposer.p(false);
        return k;
    }

    @Override // androidx.compose.material.SwitchColors
    public final MutableState b(boolean z, Composer composer) {
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1176343362);
        if (z) {
            j = this.b;
        } else {
            j = this.d;
        }
        MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
        gapComposer.p(false);
        return k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultSwitchColors.class != obj.getClass()) {
            return false;
        }
        DefaultSwitchColors defaultSwitchColors = (DefaultSwitchColors) obj;
        if (Color.c(this.a, defaultSwitchColors.a) && Color.c(this.b, defaultSwitchColors.b) && Color.c(this.c, defaultSwitchColors.c) && Color.c(this.d, defaultSwitchColors.d) && Color.c(this.e, defaultSwitchColors.e) && Color.c(this.f, defaultSwitchColors.f) && Color.c(this.g, defaultSwitchColors.g) && Color.c(this.h, defaultSwitchColors.h)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.h) + jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g);
    }
}

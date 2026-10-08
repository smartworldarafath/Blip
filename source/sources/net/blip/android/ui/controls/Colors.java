package net.blip.android.ui.controls;

import androidx.compose.material.SwitchColors;
import androidx.compose.material.SwitchDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import defpackage.jb;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Colors implements SwitchColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public Colors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
    }

    @Override // androidx.compose.material.SwitchColors
    public final MutableState a(boolean z, Composer composer) {
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(2099122294);
        SwitchDefaults.a(gapComposer);
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
        gapComposer.W(672811617);
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
        if (!(obj instanceof Colors)) {
            return false;
        }
        Colors colors = (Colors) obj;
        if (Color.c(this.a, colors.a) && Color.c(this.b, colors.b) && Color.c(this.c, colors.c) && Color.c(this.d, colors.d) && Color.c(this.e, colors.e) && Color.c(this.f, colors.f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.f) + jb.a(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        String i = Color.i(this.a);
        String i2 = Color.i(this.b);
        String i3 = Color.i(this.c);
        String i4 = Color.i(this.d);
        String i5 = Color.i(this.e);
        String i6 = Color.i(this.f);
        StringBuilder o = q.o("Colors(switchKnobOn=", i, ", switchTrackOn=", i2, ", switchKnobOff=");
        q.B(o, i3, ", switchTrackOff=", i4, ", switchKnobDisabled=");
        o.append(i5);
        o.append(", switchTrackDisabled=");
        o.append(i6);
        o.append(")");
        return o.toString();
    }
}

package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LinearGradient extends ShaderBrush {
    public final ArrayList c;
    public final ArrayList d;
    public final long e;

    public LinearGradient(long j, ArrayList arrayList, ArrayList arrayList2) {
        this.c = arrayList;
        this.d = arrayList2;
        this.e = j;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    public final Shader b(long j) {
        float intBitsToFloat;
        float intBitsToFloat2;
        int i = 0;
        if (Float.intBitsToFloat(0) == Float.POSITIVE_INFINITY) {
            intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        } else {
            intBitsToFloat = Float.intBitsToFloat(0);
        }
        if (Float.intBitsToFloat(0) == Float.POSITIVE_INFINITY) {
            i = (int) (j & 4294967295L);
        }
        float intBitsToFloat3 = Float.intBitsToFloat(i);
        long j2 = this.e;
        int i2 = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i2) == Float.POSITIVE_INFINITY) {
            i2 = (int) (j >> 32);
        }
        float intBitsToFloat4 = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & 4294967295L);
        if (Float.intBitsToFloat(i3) == Float.POSITIVE_INFINITY) {
            intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        } else {
            intBitsToFloat2 = Float.intBitsToFloat(i3);
        }
        return ShaderKt.a((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L), (Float.floatToRawIntBits(intBitsToFloat4) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L), this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinearGradient) {
            LinearGradient linearGradient = (LinearGradient) obj;
            if (this.c.equals(linearGradient.c) && this.d.equals(linearGradient.d) && Offset.c(0L, 0L) && Offset.c(this.e, linearGradient.e)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(0) + jb.a(jb.a((this.d.hashCode() + (this.c.hashCode() * 31)) * 31, 31, 0L), 31, this.e);
    }

    public final String toString() {
        String str;
        String i = q.i("start=", Offset.h(0L), ", ");
        long j = this.e;
        if ((((9187343241974906880L ^ (j & 9187343241974906880L)) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str = q.i("end=", Offset.h(j), ", ");
        } else {
            str = "";
        }
        StringBuilder sb = new StringBuilder("LinearGradient(colors=");
        sb.append(this.c);
        sb.append(", stops=");
        sb.append(this.d);
        sb.append(", ");
        q.B(sb, i, str, "tileMode=", "Clamp");
        sb.append(")");
        return sb.toString();
    }
}

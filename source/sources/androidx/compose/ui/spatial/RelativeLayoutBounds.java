package androidx.compose.ui.spatial;

import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.ui.unit.IntOffset;
import defpackage.jb;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RelativeLayoutBounds {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final float[] f;
    public final AwaitFirstLayoutModifier.Node g;

    public RelativeLayoutBounds(long j, long j2, long j3, long j4, long j5, float[] fArr, AwaitFirstLayoutModifier.Node node) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = fArr;
        this.g = node;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean equals;
        boolean z;
        if (this != obj) {
            if (obj != null && RelativeLayoutBounds.class == obj.getClass()) {
                RelativeLayoutBounds relativeLayoutBounds = (RelativeLayoutBounds) obj;
                if (this.a == relativeLayoutBounds.a && this.b == relativeLayoutBounds.b && this.e == relativeLayoutBounds.e && IntOffset.a(this.c, relativeLayoutBounds.c) && IntOffset.a(this.d, relativeLayoutBounds.d)) {
                    float[] fArr = relativeLayoutBounds.f;
                    float[] fArr2 = this.f;
                    if (fArr2 == null) {
                        if (fArr == null) {
                            equals = true;
                            if (equals) {
                                if (this.g != relativeLayoutBounds.g) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (!z) {
                                }
                            }
                        }
                        equals = false;
                        if (equals) {
                        }
                    } else {
                        if (fArr != null) {
                            equals = fArr2.equals(fArr);
                            if (equals) {
                            }
                        }
                        equals = false;
                        if (equals) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int a = jb.a(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.e), 31, this.c), 31, this.d);
        float[] fArr = this.f;
        if (fArr != null) {
            i = Arrays.hashCode(fArr);
        } else {
            i = 0;
        }
        return this.g.hashCode() + ((a + i) * 31);
    }
}

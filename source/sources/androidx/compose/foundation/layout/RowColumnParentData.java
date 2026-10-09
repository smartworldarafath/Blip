package androidx.compose.foundation.layout;

import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RowColumnParentData {
    public float a = 0.0f;
    public boolean b = true;
    public CrossAxisAlignment c = null;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RowColumnParentData) {
                RowColumnParentData rowColumnParentData = (RowColumnParentData) obj;
                if (Float.compare(this.a, rowColumnParentData.a) != 0 || this.b != rowColumnParentData.b || !Intrinsics.a(this.c, rowColumnParentData.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int b = jb.b(Float.hashCode(this.a) * 31, 31, this.b);
        CrossAxisAlignment crossAxisAlignment = this.c;
        if (crossAxisAlignment == null) {
            hashCode = 0;
        } else {
            hashCode = crossAxisAlignment.hashCode();
        }
        return (b + hashCode) * 31;
    }

    public final String toString() {
        return "RowColumnParentData(weight=" + this.a + ", fill=" + this.b + ", crossAxisAlignment=" + this.c + ", flowLayoutData=null)";
    }
}

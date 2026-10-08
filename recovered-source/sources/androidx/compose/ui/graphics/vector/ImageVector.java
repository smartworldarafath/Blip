package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImageVector {
    public static int k;
    public static final Companion l = new Object();
    public final String a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final VectorGroup f;
    public final long g;
    public final int h;
    public final boolean i;
    public final int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final String a;
        public final float b;
        public final float c;
        public final float d;
        public final float e;
        public final long f;
        public final int g;
        public final boolean h;
        public final ArrayList i;
        public final GroupParams j;
        public boolean k;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class GroupParams {
            public final String a;
            public final float b;
            public final float c;
            public final float d;
            public final float e;
            public final float f;
            public final float g;
            public final float h;
            public final List i;
            public final ArrayList j;

            public GroupParams(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list, int i) {
                str = (i & 1) != 0 ? "" : str;
                f = (i & 2) != 0 ? 0.0f : f;
                f2 = (i & 4) != 0 ? 0.0f : f2;
                f3 = (i & 8) != 0 ? 0.0f : f3;
                f4 = (i & 16) != 0 ? 1.0f : f4;
                f5 = (i & 32) != 0 ? 1.0f : f5;
                f6 = (i & 64) != 0 ? 0.0f : f6;
                f7 = (i & 128) != 0 ? 0.0f : f7;
                if ((i & 256) != 0) {
                    int i2 = VectorKt.a;
                    list = EmptyList.j;
                }
                ArrayList arrayList = new ArrayList();
                this.a = str;
                this.b = f;
                this.c = f2;
                this.d = f3;
                this.e = f4;
                this.f = f5;
                this.g = f6;
                this.h = f7;
                this.i = list;
                this.j = arrayList;
            }
        }

        public Builder(String str, float f, float f2, float f3, float f4, long j, int i, boolean z, int i2) {
            long j2;
            int i3;
            str = (i2 & 1) != 0 ? "" : str;
            if ((i2 & 32) != 0) {
                j2 = Color.h;
            } else {
                j2 = j;
            }
            if ((i2 & 64) != 0) {
                i3 = 5;
            } else {
                i3 = i;
            }
            this.a = str;
            this.b = f;
            this.c = f2;
            this.d = f3;
            this.e = f4;
            this.f = j2;
            this.g = i3;
            this.h = z;
            ArrayList arrayList = new ArrayList();
            this.i = arrayList;
            GroupParams groupParams = new GroupParams(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, 1023);
            this.j = groupParams;
            arrayList.add(groupParams);
        }

        public static /* synthetic */ void c(Builder builder, ArrayList arrayList, SolidColor solidColor) {
            builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", arrayList);
        }

        public final void a(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list) {
            if (this.k) {
                InlineClassHelperKt.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            this.i.add(new GroupParams(str, f, f2, f3, f4, f5, f6, f7, list, 512));
        }

        public final void b(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2, int i3, Brush brush, Brush brush2, String str, List list) {
            if (this.k) {
                InlineClassHelperKt.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ((GroupParams) this.i.get(r0.size() - 1)).j.add(new VectorPath(f, f2, f3, f4, f5, f6, f7, i, i2, i3, brush, brush2, str, list));
        }

        public final ImageVector d() {
            if (this.k) {
                InlineClassHelperKt.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            while (this.i.size() > 1) {
                e();
            }
            GroupParams groupParams = this.j;
            ImageVector imageVector = new ImageVector(this.a, this.b, this.c, this.d, this.e, new VectorGroup(groupParams.a, groupParams.b, groupParams.c, groupParams.d, groupParams.e, groupParams.f, groupParams.g, groupParams.h, groupParams.i, groupParams.j), this.f, this.g, this.h);
            this.k = true;
            return imageVector;
        }

        public final void e() {
            if (this.k) {
                InlineClassHelperKt.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ArrayList arrayList = this.i;
            GroupParams groupParams = (GroupParams) arrayList.remove(arrayList.size() - 1);
            ((GroupParams) arrayList.get(arrayList.size() - 1)).j.add(new VectorGroup(groupParams.a, groupParams.b, groupParams.c, groupParams.d, groupParams.e, groupParams.f, groupParams.g, groupParams.h, groupParams.i, groupParams.j));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public ImageVector(String str, float f, float f2, float f3, float f4, VectorGroup vectorGroup, long j, int i, boolean z) {
        int i2;
        synchronized (l) {
            i2 = k;
            k = i2 + 1;
        }
        this.a = str;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = vectorGroup;
        this.g = j;
        this.h = i;
        this.i = z;
        this.j = i2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ImageVector) {
                ImageVector imageVector = (ImageVector) obj;
                if (Intrinsics.a(this.a, imageVector.a) && Dp.b(this.b, imageVector.b) && Dp.b(this.c, imageVector.c) && this.d == imageVector.d && this.e == imageVector.e && this.f.equals(imageVector.f) && Color.c(this.g, imageVector.g) && this.h == imageVector.h && this.i == imageVector.i) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = (this.f.hashCode() + q.a(this.e, q.a(this.d, q.a(this.c, q.a(this.b, this.a.hashCode() * 31, 31), 31), 31), 31)) * 31;
        int i = Color.i;
        return Boolean.hashCode(this.i) + q.b(this.h, jb.a(hashCode, 31, this.g), 31);
    }
}

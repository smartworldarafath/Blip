package androidx.media3.exoplayer.video.spherical;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class Projection {
    public final Mesh a;
    public final Mesh b;
    public final int c;
    public final boolean d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mesh {
        public final SubMesh[] a;

        public Mesh(SubMesh... subMeshArr) {
            this.a = subMeshArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SubMesh {
        public final int a;
        public final int b;
        public final float[] c;
        public final float[] d;

        public SubMesh(int i, int i2, float[] fArr, float[] fArr2) {
            boolean z;
            this.a = i;
            if (fArr.length * 2 == fArr2.length * 3) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            this.c = fArr;
            this.d = fArr2;
            this.b = i2;
        }
    }

    public Projection(Mesh mesh, Mesh mesh2, int i) {
        boolean z;
        this.a = mesh;
        this.b = mesh2;
        this.c = i;
        if (mesh == mesh2) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
    }
}

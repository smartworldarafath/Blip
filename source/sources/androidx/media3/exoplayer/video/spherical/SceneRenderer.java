package androidx.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import androidx.media3.common.Format;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.Projection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SceneRenderer implements VideoFrameMetadataListener, CameraMotionListener {
    public int r;
    public SurfaceTexture s;
    public byte[] v;
    public final AtomicBoolean j = new AtomicBoolean();
    public final AtomicBoolean k = new AtomicBoolean(true);
    public final ProjectionRenderer l = new Object();
    public final FrameRotationQueue m = new FrameRotationQueue();
    public final TimedValueQueue n = new TimedValueQueue();
    public final TimedValueQueue o = new TimedValueQueue();
    public final float[] p = new float[16];
    public final float[] q = new float[16];
    public volatile int t = 0;
    public int u = -1;

    public final SurfaceTexture a() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.a();
            this.l.a();
            GlUtil.a();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GlUtil.a();
            int i = iArr[0];
            GLES20.glBindTexture(36197, i);
            GlUtil.a();
            GLES20.glTexParameteri(36197, 10240, 9729);
            GlUtil.a();
            GLES20.glTexParameteri(36197, 10241, 9729);
            GlUtil.a();
            GLES20.glTexParameteri(36197, 10242, 33071);
            GlUtil.a();
            GLES20.glTexParameteri(36197, 10243, 33071);
            GlUtil.a();
            this.r = i;
        } catch (GlUtil.GlException e) {
            Log.d("SceneRenderer", "Failed to initialize the renderer", e);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.r);
        this.s = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: androidx.media3.exoplayer.video.spherical.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                SceneRenderer.this.j.set(true);
            }
        });
        return this.s;
    }

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public final void c(long j, float[] fArr) {
        this.m.c.a(j, fArr);
    }

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public final void e() {
        this.n.b();
        FrameRotationQueue frameRotationQueue = this.m;
        frameRotationQueue.c.b();
        frameRotationQueue.d = false;
        this.k.set(true);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public final void f(long j, long j2, Format format, MediaFormat mediaFormat) {
        int i;
        float f;
        ArrayList arrayList;
        int m;
        this.n.a(j2, Long.valueOf(j));
        byte[] bArr = format.F;
        int i2 = format.G;
        byte[] bArr2 = this.v;
        int i3 = this.u;
        this.v = bArr;
        if (i2 == -1) {
            i2 = this.t;
        }
        this.u = i2;
        if (i3 == i2 && Arrays.equals(bArr2, this.v)) {
            return;
        }
        byte[] bArr3 = this.v;
        Projection projection = null;
        if (bArr3 != null) {
            int i4 = this.u;
            int i5 = ProjectionDecoder.b;
            ParsableByteArray parsableByteArray = new ParsableByteArray(bArr3);
            try {
                parsableByteArray.N(4);
                m = parsableByteArray.m();
                parsableByteArray.M(0);
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (m == 1886547818) {
                parsableByteArray.N(8);
                int i6 = parsableByteArray.b;
                int i7 = parsableByteArray.c;
                while (i6 < i7) {
                    int m2 = parsableByteArray.m() + i6;
                    if (m2 <= i6 || m2 > i7) {
                        break;
                    }
                    int m3 = parsableByteArray.m();
                    if (m3 != 2037673328 && m3 != 1836279920) {
                        parsableByteArray.M(m2);
                        i6 = m2;
                    }
                    parsableByteArray.L(m2);
                    arrayList = ProjectionDecoder.a(parsableByteArray);
                    break;
                }
                arrayList = null;
            } else {
                arrayList = ProjectionDecoder.a(parsableByteArray);
            }
            if (arrayList != null) {
                int size = arrayList.size();
                if (size != 1) {
                    if (size == 2) {
                        projection = new Projection((Projection.Mesh) arrayList.get(0), (Projection.Mesh) arrayList.get(1), i4);
                    }
                } else {
                    Projection.Mesh mesh = (Projection.Mesh) arrayList.get(0);
                    projection = new Projection(mesh, mesh, i4);
                }
            }
        }
        if (projection == null || !ProjectionRenderer.b(projection)) {
            int i8 = this.u;
            float radians = (float) Math.toRadians(180.0d);
            float radians2 = (float) Math.toRadians(360.0d);
            float f2 = radians / 36.0f;
            float f3 = radians2 / 72.0f;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < 36; i11 = i) {
                float f4 = radians / 2.0f;
                float f5 = (i11 * f2) - f4;
                i = i11 + 1;
                float f6 = (i * f2) - f4;
                int i12 = 0;
                while (i12 < 73) {
                    int i13 = i;
                    int i14 = 0;
                    int i15 = 2;
                    while (i14 < i15) {
                        if (i14 == 0) {
                            f = f5;
                        } else {
                            f = f6;
                        }
                        float f7 = radians;
                        float f8 = i12 * f3;
                        float f9 = radians2;
                        double d = (f8 + 3.1415927f) - (radians2 / 2.0f);
                        double d2 = f;
                        fArr[i9] = -((float) (Math.cos(d2) * Math.sin(d) * 50.0d));
                        fArr[i9 + 1] = (float) (Math.sin(d2) * 50.0d);
                        int i16 = i9 + 3;
                        float f10 = f2;
                        fArr[i9 + 2] = (float) (Math.cos(d2) * Math.cos(d) * 50.0d);
                        fArr2[i10] = f8 / f9;
                        int i17 = i10 + 2;
                        fArr2[i10 + 1] = ((i11 + i14) * f10) / f7;
                        if ((i12 == 0 && i14 == 0) || (i12 == 72 && i14 == 1)) {
                            System.arraycopy(fArr, i9, fArr, i16, 3);
                            i9 += 6;
                            i15 = 2;
                            System.arraycopy(fArr2, i10, fArr2, i17, 2);
                            i10 += 4;
                        } else {
                            i15 = 2;
                            i9 = i16;
                            i10 = i17;
                        }
                        i14++;
                        radians = f7;
                        f2 = f10;
                        radians2 = f9;
                    }
                    i12++;
                    i = i13;
                }
            }
            Projection.Mesh mesh2 = new Projection.Mesh(new Projection.SubMesh(0, 1, fArr, fArr2));
            projection = new Projection(mesh2, mesh2, i8);
        }
        this.o.a(j2, projection);
    }
}

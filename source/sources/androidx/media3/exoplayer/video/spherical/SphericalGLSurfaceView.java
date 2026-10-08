package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.OrientationListener;
import androidx.media3.exoplayer.video.spherical.ProjectionRenderer;
import androidx.media3.exoplayer.video.spherical.TouchTracker;
import defpackage.e;
import defpackage.f3;
import java.nio.Buffer;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {
    public final CopyOnWriteArrayList j;
    public final SensorManager k;
    public final Sensor l;
    public final OrientationListener m;
    public final Handler n;
    public final SceneRenderer o;
    public SurfaceTexture p;
    public Surface q;
    public boolean r;
    public boolean s;
    public boolean t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Renderer implements GLSurfaceView.Renderer, TouchTracker.Listener, OrientationListener.Listener {
        public final SceneRenderer j;
        public final float[] m;
        public final float[] n;
        public final float[] o;
        public float p;
        public float q;
        public final float[] k = new float[16];
        public final float[] l = new float[16];
        public final float[] r = new float[16];
        public final float[] s = new float[16];

        public Renderer(SceneRenderer sceneRenderer) {
            float[] fArr = new float[16];
            this.m = fArr;
            float[] fArr2 = new float[16];
            this.n = fArr2;
            float[] fArr3 = new float[16];
            this.o = fArr3;
            this.j = sceneRenderer;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.q = 3.1415927f;
        }

        @Override // androidx.media3.exoplayer.video.spherical.OrientationListener.Listener
        public final synchronized void a(float[] fArr, float f) {
            float[] fArr2 = this.m;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            float f2 = -f;
            this.q = f2;
            Matrix.setRotateM(this.n, 0, -this.p, (float) Math.cos(f2), (float) Math.sin(this.q), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            float[] fArr;
            Object d;
            synchronized (this) {
                Matrix.multiplyMM(this.s, 0, this.m, 0, this.o, 0);
                Matrix.multiplyMM(this.r, 0, this.n, 0, this.s, 0);
            }
            Matrix.multiplyMM(this.l, 0, this.k, 0, this.r, 0);
            SceneRenderer sceneRenderer = this.j;
            float[] fArr2 = this.l;
            GLES20.glClear(16384);
            try {
                GlUtil.a();
            } catch (GlUtil.GlException e) {
                Log.d("SceneRenderer", "Failed to draw a frame", e);
            }
            if (sceneRenderer.j.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = sceneRenderer.s;
                surfaceTexture.getClass();
                surfaceTexture.updateTexImage();
                try {
                    GlUtil.a();
                } catch (GlUtil.GlException e2) {
                    Log.d("SceneRenderer", "Failed to draw a frame", e2);
                }
                if (sceneRenderer.k.compareAndSet(true, false)) {
                    Matrix.setIdentityM(sceneRenderer.p, 0);
                }
                long timestamp = sceneRenderer.s.getTimestamp();
                TimedValueQueue timedValueQueue = sceneRenderer.n;
                synchronized (timedValueQueue) {
                    d = timedValueQueue.d(timestamp, false);
                }
                Long l = (Long) d;
                if (l != null) {
                    FrameRotationQueue frameRotationQueue = sceneRenderer.m;
                    float[] fArr3 = sceneRenderer.p;
                    float[] fArr4 = (float[]) frameRotationQueue.c.f(l.longValue());
                    if (fArr4 != null) {
                        float[] fArr5 = frameRotationQueue.b;
                        float f = fArr4[0];
                        float f2 = -fArr4[1];
                        float f3 = -fArr4[2];
                        float length = Matrix.length(f, f2, f3);
                        if (length != 0.0f) {
                            Matrix.setRotateM(fArr5, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
                        } else {
                            Matrix.setIdentityM(fArr5, 0);
                        }
                        if (!frameRotationQueue.d) {
                            FrameRotationQueue.a(frameRotationQueue.a, frameRotationQueue.b);
                            frameRotationQueue.d = true;
                        }
                        Matrix.multiplyMM(fArr3, 0, frameRotationQueue.a, 0, frameRotationQueue.b, 0);
                    }
                }
                Projection projection = (Projection) sceneRenderer.o.f(timestamp);
                if (projection != null) {
                    ProjectionRenderer projectionRenderer = sceneRenderer.l;
                    projectionRenderer.getClass();
                    if (ProjectionRenderer.b(projection)) {
                        projectionRenderer.a = projection.c;
                        projectionRenderer.b = new ProjectionRenderer.MeshData(projection.a.a[0]);
                        if (!projection.d) {
                            new ProjectionRenderer.MeshData(projection.b.a[0]);
                        }
                    }
                }
            }
            Matrix.multiplyMM(sceneRenderer.q, 0, fArr2, 0, sceneRenderer.p, 0);
            ProjectionRenderer projectionRenderer2 = sceneRenderer.l;
            int i = sceneRenderer.r;
            float[] fArr6 = sceneRenderer.q;
            ProjectionRenderer.MeshData meshData = projectionRenderer2.b;
            if (meshData != null) {
                int i2 = projectionRenderer2.a;
                if (i2 == 1) {
                    fArr = ProjectionRenderer.j;
                } else if (i2 == 2) {
                    fArr = ProjectionRenderer.k;
                } else {
                    fArr = ProjectionRenderer.i;
                }
                GLES20.glUniformMatrix3fv(projectionRenderer2.e, 1, false, fArr, 0);
                GLES20.glUniformMatrix4fv(projectionRenderer2.d, 1, false, fArr6, 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(36197, i);
                GLES20.glUniform1i(projectionRenderer2.h, 0);
                try {
                    GlUtil.a();
                } catch (GlUtil.GlException e3) {
                    Log.d("ProjectionRenderer", "Failed to bind uniforms", e3);
                }
                GLES20.glVertexAttribPointer(projectionRenderer2.f, 3, 5126, false, 12, (Buffer) meshData.b);
                try {
                    GlUtil.a();
                } catch (GlUtil.GlException e4) {
                    Log.d("ProjectionRenderer", "Failed to load position data", e4);
                }
                GLES20.glVertexAttribPointer(projectionRenderer2.g, 2, 5126, false, 8, (Buffer) meshData.c);
                try {
                    GlUtil.a();
                } catch (GlUtil.GlException e5) {
                    Log.d("ProjectionRenderer", "Failed to load texture data", e5);
                }
                GLES20.glDrawArrays(meshData.d, 0, meshData.a);
                try {
                    GlUtil.a();
                } catch (GlUtil.GlException e6) {
                    Log.d("ProjectionRenderer", "Failed to render", e6);
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
            float f;
            GLES20.glViewport(0, 0, i, i2);
            float f2 = i / i2;
            if (f2 > 1.0f) {
                f = (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f2)) * 2.0d);
            } else {
                f = 90.0f;
            }
            Matrix.perspectiveM(this.k, 0, f, f2, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView sphericalGLSurfaceView = SphericalGLSurfaceView.this;
            sphericalGLSurfaceView.n.post(new f3(19, sphericalGLSurfaceView, this.j.a()));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface VideoSurfaceListener {
        void r();

        void u(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        super(context, null);
        this.j = new CopyOnWriteArrayList();
        this.n = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.k = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.l = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        SceneRenderer sceneRenderer = new SceneRenderer();
        this.o = sceneRenderer;
        Renderer renderer = new Renderer(sceneRenderer);
        View.OnTouchListener touchTracker = new TouchTracker(context, renderer);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.m = new OrientationListener(windowManager.getDefaultDisplay(), touchTracker, renderer);
        this.r = true;
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setOnTouchListener(touchTracker);
    }

    public final void a() {
        boolean z;
        if (this.r && this.s) {
            z = true;
        } else {
            z = false;
        }
        Sensor sensor = this.l;
        if (sensor != null && z != this.t) {
            OrientationListener orientationListener = this.m;
            SensorManager sensorManager = this.k;
            if (z) {
                sensorManager.registerListener(orientationListener, sensor, 0);
            } else {
                sensorManager.unregisterListener(orientationListener);
            }
            this.t = z;
        }
    }

    public CameraMotionListener getCameraMotionListener() {
        return this.o;
    }

    public VideoFrameMetadataListener getVideoFrameMetadataListener() {
        return this.o;
    }

    public Surface getVideoSurface() {
        return this.q;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n.post(new e(17, this));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.s = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.s = true;
        a();
    }

    public void setDefaultStereoMode(int i) {
        this.o.t = i;
    }

    public void setUseSensorRotation(boolean z) {
        this.r = z;
        a();
    }
}

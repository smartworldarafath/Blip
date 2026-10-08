package androidx.media3.exoplayer.video;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.media3.common.util.EGLSurfaceTexture;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaceholderSurface extends Surface {
    public static int m;
    public static boolean n;
    public final boolean j;
    public final PlaceholderSurfaceThread k;
    public boolean l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PlaceholderSurfaceThread extends HandlerThread implements Handler.Callback {
        public EGLSurfaceTexture j;
        public Handler k;
        public Error l;
        public RuntimeException m;
        public PlaceholderSurface n;

        public final void a(int i) {
            boolean z;
            boolean z2;
            int[] iArr;
            boolean z3;
            int[] iArr2;
            EGLSurface eglCreatePbufferSurface;
            boolean z4;
            this.j.getClass();
            EGLSurfaceTexture eGLSurfaceTexture = this.j;
            int[] iArr3 = eGLSurfaceTexture.k;
            boolean z5 = false;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            if (eglGetDisplay != null) {
                z = true;
            } else {
                z = false;
            }
            GlUtil.b("eglGetDisplay failed", z);
            int[] iArr4 = new int[2];
            GlUtil.b("eglInitialize failed", EGL14.eglInitialize(eglGetDisplay, iArr4, 0, iArr4, 1));
            eGLSurfaceTexture.l = eglGetDisplay;
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr5 = new int[1];
            boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, EGLSurfaceTexture.p, 0, eGLConfigArr, 0, 1, iArr5, 0);
            if (eglChooseConfig && iArr5[0] > 0 && eGLConfigArr[0] != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Object[] objArr = {Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr5[0]), eGLConfigArr[0]};
            String str = Util.a;
            GlUtil.b(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", objArr), z2);
            EGLConfig eGLConfig = eGLConfigArr[0];
            EGLDisplay eGLDisplay = eGLSurfaceTexture.l;
            if (i == 0) {
                iArr = new int[]{12440, 2, 12344};
            } else {
                iArr = new int[]{12440, 2, 12992, 1, 12344};
            }
            EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
            if (eglCreateContext != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            GlUtil.b("eglCreateContext failed", z3);
            eGLSurfaceTexture.m = eglCreateContext;
            EGLDisplay eGLDisplay2 = eGLSurfaceTexture.l;
            if (i == 1) {
                eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
            } else {
                if (i == 2) {
                    iArr2 = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
                } else {
                    iArr2 = new int[]{12375, 1, 12374, 1, 12344};
                }
                eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay2, eGLConfig, iArr2, 0);
                if (eglCreatePbufferSurface != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GlUtil.b("eglCreatePbufferSurface failed", z4);
            }
            GlUtil.b("eglMakeCurrent failed", EGL14.eglMakeCurrent(eGLDisplay2, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext));
            eGLSurfaceTexture.n = eglCreatePbufferSurface;
            GLES20.glGenTextures(1, iArr3, 0);
            GlUtil.a();
            SurfaceTexture surfaceTexture = new SurfaceTexture(iArr3[0]);
            eGLSurfaceTexture.o = surfaceTexture;
            surfaceTexture.setOnFrameAvailableListener(eGLSurfaceTexture);
            SurfaceTexture surfaceTexture2 = this.j.o;
            surfaceTexture2.getClass();
            if (i != 0) {
                z5 = true;
            }
            this.n = new PlaceholderSurface(this, surfaceTexture2, z5);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void b() {
            this.j.getClass();
            EGLSurfaceTexture eGLSurfaceTexture = this.j;
            eGLSurfaceTexture.j.removeCallbacks(eGLSurfaceTexture);
            try {
                SurfaceTexture surfaceTexture = eGLSurfaceTexture.o;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    GLES20.glDeleteTextures(1, eGLSurfaceTexture.k, 0);
                }
            } finally {
                EGLDisplay eGLDisplay = eGLSurfaceTexture.l;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = eGLSurfaceTexture.l;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = eGLSurfaceTexture.n;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(eGLSurfaceTexture.l, eGLSurfaceTexture.n);
                }
                EGLContext eGLContext = eGLSurfaceTexture.m;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(eGLSurfaceTexture.l, eGLContext);
                }
                EGL14.eglReleaseThread();
                EGLDisplay eGLDisplay3 = eGLSurfaceTexture.l;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(eGLSurfaceTexture.l);
                }
                eGLSurfaceTexture.l = null;
                eGLSurfaceTexture.m = null;
                eGLSurfaceTexture.n = null;
                eGLSurfaceTexture.o = null;
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i == 2) {
                        try {
                            b();
                            return true;
                        } catch (Throwable th) {
                            try {
                                Log.d("PlaceholderSurface", "Failed to release placeholder surface", th);
                                return true;
                            } finally {
                                quit();
                            }
                        }
                    }
                } else {
                    try {
                        a(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    } catch (GlUtil.GlException e) {
                        Log.d("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                        this.m = new IllegalStateException(e);
                        synchronized (this) {
                            notify();
                        }
                    } catch (Error e2) {
                        Log.d("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                        this.l = e2;
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e3) {
                        Log.d("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                        this.m = e3;
                        synchronized (this) {
                            notify();
                        }
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }
    }

    public PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.k = placeholderSurfaceThread;
        this.j = z;
    }

    public static synchronized boolean a() {
        boolean z;
        int i;
        synchronized (PlaceholderSurface.class) {
            try {
                z = false;
                if (!n) {
                    try {
                    } catch (GlUtil.GlException e) {
                        Log.c("PlaceholderSurface", "Failed to determine secure mode due to GL error: " + e.getMessage());
                    }
                    if (GlUtil.d("EGL_EXT_protected_content")) {
                        if (GlUtil.d("EGL_KHR_surfaceless_context")) {
                            i = 1;
                        } else {
                            i = 2;
                        }
                        m = i;
                        n = true;
                    }
                    i = 0;
                    m = i;
                    n = true;
                }
                if (m != 0) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.k) {
            try {
                if (!this.l) {
                    PlaceholderSurfaceThread placeholderSurfaceThread = this.k;
                    placeholderSurfaceThread.k.getClass();
                    placeholderSurfaceThread.k.sendEmptyMessage(2);
                    this.l = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

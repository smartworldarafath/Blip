package androidx.media3.common.util;

import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GlUtil {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class GlException extends Exception {
        public GlException(String str, List list) {
            super(str);
            ImmutableList.m(list);
        }
    }

    public static void a() {
        StringBuilder sb = new StringBuilder();
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = "error code: 0x" + Integer.toHexString(glGetError);
            }
            sb.append("glError: ");
            sb.append(gluErrorString);
            builder.d(Integer.valueOf(glGetError));
            z = true;
        }
        if (!z) {
        } else {
            throw new GlException(sb.toString(), builder.i());
        }
    }

    public static void b(String str, boolean z) {
        if (z) {
        } else {
            throw new GlException(str, ImmutableList.r());
        }
    }

    public static FloatBuffer c(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static boolean d(String str) {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        b("No EGL display.", !eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        b("Error in eglInitialize.", EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0));
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            String eglQueryString = EGL14.eglQueryString(eglGetDisplay, 12373);
            if (eglQueryString == null || !eglQueryString.contains(str)) {
                return false;
            }
            return true;
        }
        throw new GlException("Error in getDefaultEglDisplay, error code: 0x" + Integer.toHexString(eglGetError), ImmutableList.t(Integer.valueOf(eglGetError)));
    }
}

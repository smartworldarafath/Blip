package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Size;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    public TransformShader a;
    public long b = 9205357640488583168L;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (androidx.compose.ui.geometry.Size.a(r4.b, r6) == false) goto L6;
     */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, androidx.compose.ui.graphics.TransformShader] */
    @Override // androidx.compose.ui.graphics.Brush
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(float f, long j, Paint paint) {
        TransformShader transformShader;
        Shader shader;
        TransformShader transformShader2 = this.a;
        Shader shader2 = null;
        if (transformShader2 != null) {
            transformShader = transformShader2;
        }
        if (Size.e(j)) {
            this.a = null;
            this.b = 9205357640488583168L;
            transformShader = null;
        } else {
            TransformShader transformShader3 = this.a;
            TransformShader transformShader4 = transformShader3;
            if (transformShader3 == null) {
                ?? obj = new Object();
                this.a = obj;
                transformShader4 = obj;
            }
            transformShader4.a = b(j);
            this.a = transformShader4;
            this.b = j;
            transformShader = transformShader4;
        }
        AndroidPaint androidPaint = (AndroidPaint) paint;
        long a = androidPaint.a();
        long j2 = Color.b;
        if (!Color.c(a, j2)) {
            androidPaint.f(j2);
        }
        Shader shader3 = androidPaint.c;
        if (transformShader != null) {
            shader = transformShader.a;
        } else {
            shader = null;
        }
        if (!Intrinsics.a(shader3, shader)) {
            if (transformShader != null) {
                shader2 = transformShader.a;
            }
            androidPaint.i(shader2);
        }
        if (androidPaint.a.getAlpha() / 255.0f == f) {
            return;
        }
        androidPaint.d(f);
    }

    public abstract Shader b(long j);
}

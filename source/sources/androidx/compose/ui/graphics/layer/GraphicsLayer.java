package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.graphics.RectF;
import android.os.Build;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.fe;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayer {
    public boolean A;
    public RectF B;
    public final GraphicsLayerImpl a;
    public Outline f;
    public float j;
    public androidx.compose.ui.graphics.Outline k;
    public Path l;
    public AndroidPath m;
    public boolean n;
    public CanvasDrawScope o;
    public AndroidPaint p;
    public int q;
    public boolean s;
    public long t;
    public long u;
    public int v;
    public int w;
    public int x;
    public int y;
    public long z;
    public Density b = DrawContextKt.a;
    public LayoutDirection c = LayoutDirection.j;
    public Function1 d = GraphicsLayer$drawBlock$1.k;
    public final Function1 e = new GraphicsLayer$clipDrawBlock$1(this);
    public boolean g = true;
    public long h = 0;
    public long i = 9205357640488583168L;
    public final ChildLayerDependenciesTracker r = new Object();

    static {
        Intrinsics.a(Build.FINGERPRINT, "robolectric");
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, androidx.compose.ui.graphics.layer.ChildLayerDependenciesTracker] */
    public GraphicsLayer(GraphicsLayerImpl graphicsLayerImpl) {
        this.a = graphicsLayerImpl;
        graphicsLayerImpl.E(false);
        this.t = 0L;
        this.u = 0L;
        this.z = 9205357640488583168L;
    }

    public final void a() {
        Outline outline;
        if (this.g) {
            boolean z = this.A;
            Outline outline2 = null;
            GraphicsLayerImpl graphicsLayerImpl = this.a;
            if (!z && graphicsLayerImpl.L() <= 0.0f) {
                graphicsLayerImpl.E(false);
                graphicsLayerImpl.i(null, 0L);
            } else {
                Path path = this.l;
                if (path != null) {
                    RectF rectF = this.B;
                    if (rectF == null) {
                        rectF = new RectF();
                        this.B = rectF;
                    }
                    boolean z2 = path instanceof AndroidPath;
                    if (z2) {
                        android.graphics.Path path2 = ((AndroidPath) path).a;
                        path2.computeBounds(rectF, false);
                        int i = Build.VERSION.SDK_INT;
                        if (i <= 28 && !path2.isConvex()) {
                            Outline outline3 = this.f;
                            if (outline3 != null) {
                                outline3.setEmpty();
                            }
                            this.n = true;
                            outline = null;
                        } else {
                            outline = this.f;
                            if (outline == null) {
                                outline = new Outline();
                                this.f = outline;
                            }
                            if (i >= 30) {
                                if (z2) {
                                    outline.setPath(path2);
                                } else {
                                    fe.t("Unable to obtain android.graphics.Path");
                                    return;
                                }
                            } else if (z2) {
                                outline.setConvexPath(path2);
                            } else {
                                fe.t("Unable to obtain android.graphics.Path");
                                return;
                            }
                            outline.offset(this.v, this.w);
                            this.n = !outline.canClip();
                        }
                        this.l = path;
                        if (outline != null) {
                            outline.setAlpha(graphicsLayerImpl.a());
                            outline2 = outline;
                        }
                        graphicsLayerImpl.i(outline2, (4294967295L & Math.round(rectF.height())) | (Math.round(rectF.width()) << 32));
                        if (this.n && this.A) {
                            graphicsLayerImpl.E(false);
                            graphicsLayerImpl.k();
                        } else {
                            graphicsLayerImpl.E(this.A);
                        }
                    } else {
                        fe.t("Unable to obtain android.graphics.Path");
                        return;
                    }
                } else {
                    graphicsLayerImpl.E(this.A);
                    Outline outline4 = this.f;
                    if (outline4 == null) {
                        outline4 = new Outline();
                        this.f = outline4;
                    }
                    Outline outline5 = outline4;
                    long a = IntSizeKt.a(this.u);
                    long j = this.h;
                    long j2 = this.i;
                    if (j2 != 9205357640488583168L) {
                        a = j2;
                    }
                    int i2 = (int) (j >> 32);
                    int i3 = (int) (j & 4294967295L);
                    int i4 = (int) (a >> 32);
                    outline5.setRoundRect(Math.round(Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat(i3)), Math.round(Float.intBitsToFloat(i4) + Float.intBitsToFloat(i2)), Math.round(Float.intBitsToFloat((int) (a & 4294967295L)) + Float.intBitsToFloat(i3)), this.j);
                    outline5.setAlpha(graphicsLayerImpl.a());
                    graphicsLayerImpl.i(outline5, (4294967295L & Math.round(Float.intBitsToFloat(r15))) | (Math.round(Float.intBitsToFloat(i4)) << 32));
                }
            }
        }
        this.g = false;
    }

    public final void b() {
        if (this.s && this.q == 0) {
            ChildLayerDependenciesTracker childLayerDependenciesTracker = this.r;
            GraphicsLayer graphicsLayer = childLayerDependenciesTracker.a;
            if (graphicsLayer != null) {
                graphicsLayer.q--;
                graphicsLayer.b();
                childLayerDependenciesTracker.a = null;
            }
            MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.c;
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.b;
                long[] jArr = mutableScatterSet.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    r11.q--;
                                    ((GraphicsLayer) objArr[(i << 3) + i3]).b();
                                }
                                j >>= 8;
                            }
                            if (i2 != 8) {
                                break;
                            }
                        }
                        if (i == length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                mutableScatterSet.f();
            }
            this.a.k();
        }
    }

    public final void c(DrawScope drawScope) {
        ChildLayerDependenciesTracker childLayerDependenciesTracker = this.r;
        childLayerDependenciesTracker.b = childLayerDependenciesTracker.a;
        MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.c;
        if (mutableScatterSet != null && mutableScatterSet.c()) {
            MutableScatterSet mutableScatterSet2 = childLayerDependenciesTracker.d;
            if (mutableScatterSet2 == null) {
                MutableScatterSet mutableScatterSet3 = ScatterSetKt.a;
                mutableScatterSet2 = new MutableScatterSet();
                childLayerDependenciesTracker.d = mutableScatterSet2;
            }
            mutableScatterSet2.k(mutableScatterSet);
            mutableScatterSet.f();
        }
        childLayerDependenciesTracker.e = true;
        this.d.b(drawScope);
        childLayerDependenciesTracker.e = false;
        GraphicsLayer graphicsLayer = childLayerDependenciesTracker.b;
        if (graphicsLayer != null) {
            graphicsLayer.q--;
            graphicsLayer.b();
        }
        MutableScatterSet mutableScatterSet4 = childLayerDependenciesTracker.d;
        if (mutableScatterSet4 != null && mutableScatterSet4.c()) {
            Object[] objArr = mutableScatterSet4.b;
            long[] jArr = mutableScatterSet4.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                r9.q--;
                                ((GraphicsLayer) objArr[(i << 3) + i3]).b();
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            mutableScatterSet4.f();
        }
    }

    public final androidx.compose.ui.graphics.Outline d() {
        androidx.compose.ui.graphics.Outline rectangle;
        androidx.compose.ui.graphics.Outline outline = this.k;
        Path path = this.l;
        if (outline != null) {
            return outline;
        }
        if (path != null) {
            Outline.Generic generic = new Outline.Generic(path);
            this.k = generic;
            return generic;
        }
        long a = IntSizeKt.a(this.u);
        long j = this.h;
        long j2 = this.i;
        if (j2 != 9205357640488583168L) {
            a = j2;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (a >> 32)) + intBitsToFloat;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (a & 4294967295L)) + intBitsToFloat2;
        if (this.j > 0.0f) {
            rectangle = new Outline.Rounded(RoundRectKt.a(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4, (Float.floatToRawIntBits(r0) << 32) | (4294967295L & Float.floatToRawIntBits(r0))));
        } else {
            rectangle = new Outline.Rectangle(new Rect(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4));
        }
        this.k = rectangle;
        return rectangle;
    }

    public final void e(float f) {
        GraphicsLayerImpl graphicsLayerImpl = this.a;
        if (graphicsLayerImpl.a() == f) {
            return;
        }
        graphicsLayerImpl.v(f);
    }

    public final void f(long j, long j2, float f) {
        float f2 = this.v;
        float f3 = this.w;
        long f4 = Offset.f(j, (Float.floatToRawIntBits(f3) & 4294967295L) | (Float.floatToRawIntBits(f2) << 32));
        if (Offset.c(this.h, f4) && Size.a(this.i, j2) && this.j == f && this.l == null) {
            return;
        }
        this.k = null;
        this.l = null;
        this.g = true;
        this.n = false;
        this.h = f4;
        this.i = j2;
        this.j = f;
        a();
    }
}

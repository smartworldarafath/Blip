package androidx.compose.ui.graphics.vector;

import android.graphics.Bitmap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.hi;
import defpackage.n;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorComponent extends VNode {
    public final GroupComponent b;
    public String c;
    public boolean d;
    public final DrawCache e;
    public Function0 f;
    public final MutableState g;
    public BlendModeColorFilter h;
    public final MutableState i;
    public long j;
    public float k;
    public float l;
    public final hi m;

    public VectorComponent(GroupComponent groupComponent) {
        this.b = groupComponent;
        groupComponent.i = new hi(this, 0);
        this.c = "";
        this.d = true;
        this.e = new DrawCache();
        this.f = new n(19);
        this.g = SnapshotStateKt.g(null);
        this.i = SnapshotStateKt.g(new Size(0L));
        this.j = 9205357640488583168L;
        this.k = 1.0f;
        this.l = 1.0f;
        this.m = new hi(this, 1);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void a(DrawScope drawScope) {
        e(drawScope, 1.0f, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        if (r3 != r7) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0114, code lost:
    
        if (r8.d == r3) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(DrawScope drawScope, float f, ColorFilter colorFilter) {
        int i;
        boolean z;
        DrawCache drawCache;
        BlendModeColorFilter blendModeColorFilter;
        AndroidImageBitmap androidImageBitmap;
        char c;
        long j;
        ColorFilter colorFilter2;
        ColorFilter colorFilter3;
        AndroidImageBitmap androidImageBitmap2;
        AndroidImageBitmap androidImageBitmap3;
        int i2;
        int i3;
        int i4;
        GroupComponent groupComponent = this.b;
        boolean z2 = groupComponent.d;
        MutableState mutableState = this.g;
        if (z2 && groupComponent.e != 16) {
            ColorFilter colorFilter4 = (ColorFilter) ((SnapshotMutableStateImpl) mutableState).getValue();
            int i5 = VectorKt.a;
            if (!(colorFilter4 instanceof BlendModeColorFilter) ? colorFilter4 == null : !((i4 = ((BlendModeColorFilter) colorFilter4).c) != 5 && i4 != 3)) {
                if (!(colorFilter instanceof BlendModeColorFilter) ? colorFilter == null : !((i3 = ((BlendModeColorFilter) colorFilter).c) != 5 && i3 != 3)) {
                    i = 1;
                    z = this.d;
                    drawCache = this.e;
                    if (!z && Size.a(this.j, drawScope.i())) {
                        androidImageBitmap3 = drawCache.a;
                        if (androidImageBitmap3 == null) {
                            i2 = androidImageBitmap3.a();
                        } else {
                            i2 = 0;
                        }
                    }
                    if (i != 1) {
                        long j2 = groupComponent.e;
                        int i6 = VectorKt.a;
                        if (Color.d(j2) != 1.0f) {
                            j2 = Color.b(j2, 1.0f);
                        }
                        blendModeColorFilter = ColorFilter.Companion.a(j2);
                    } else {
                        blendModeColorFilter = null;
                    }
                    this.h = blendModeColorFilter;
                    float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.i() >> 32));
                    MutableState mutableState2 = this.i;
                    this.k = intBitsToFloat / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState2).getValue()).a >> 32));
                    this.l = Float.intBitsToFloat((int) (drawScope.i() & 4294967295L)) / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState2).getValue()).a & 4294967295L));
                    long ceil = (((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.i() >> 32)))) << 32) | (((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.i() & 4294967295L)))) & 4294967295L);
                    LayoutDirection layoutDirection = drawScope.getLayoutDirection();
                    androidImageBitmap = drawCache.a;
                    AndroidCanvas androidCanvas = drawCache.b;
                    if (androidImageBitmap == null && androidCanvas != null) {
                        int i7 = (int) (ceil >> 32);
                        Bitmap bitmap = androidImageBitmap.a;
                        c = ' ';
                        j = 4294967295L;
                        if (i7 <= bitmap.getWidth()) {
                            if (((int) (ceil & 4294967295L)) <= bitmap.getHeight()) {
                            }
                        }
                    } else {
                        c = ' ';
                        j = 4294967295L;
                    }
                    androidImageBitmap = ImageBitmapKt.a((int) (ceil >> c), (int) (ceil & j), i);
                    androidCanvas = CanvasKt.a(androidImageBitmap);
                    drawCache.a = androidImageBitmap;
                    drawCache.b = androidCanvas;
                    drawCache.d = i;
                    drawCache.c = ceil;
                    CanvasDrawScope canvasDrawScope = drawCache.e;
                    long a = IntSizeKt.a(ceil);
                    CanvasDrawScope.DrawParams drawParams = canvasDrawScope.j;
                    Density density = drawParams.a;
                    LayoutDirection layoutDirection2 = drawParams.b;
                    Canvas canvas = drawParams.c;
                    long j3 = drawParams.d;
                    drawParams.a = drawScope;
                    drawParams.b = layoutDirection;
                    drawParams.c = androidCanvas;
                    drawParams.d = a;
                    androidCanvas.g();
                    DrawScope.r0(canvasDrawScope, Color.b, 0L, 0.0f, null, 62);
                    this.m.b(canvasDrawScope);
                    androidCanvas.r();
                    CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.j;
                    drawParams2.a = density;
                    drawParams2.b = layoutDirection2;
                    drawParams2.c = canvas;
                    drawParams2.d = j3;
                    androidImageBitmap.a.prepareToDraw();
                    this.d = false;
                    this.j = drawScope.i();
                    if (colorFilter == null) {
                        colorFilter3 = colorFilter;
                    } else {
                        if (((ColorFilter) ((SnapshotMutableStateImpl) mutableState).getValue()) != null) {
                            colorFilter2 = (ColorFilter) ((SnapshotMutableStateImpl) mutableState).getValue();
                        } else {
                            colorFilter2 = this.h;
                        }
                        colorFilter3 = colorFilter2;
                    }
                    androidImageBitmap2 = drawCache.a;
                    if (androidImageBitmap2 == null) {
                        InlineClassHelperKt.b("drawCachedImage must be invoked first before attempting to draw the result into another destination");
                    }
                    DrawScope.A(drawScope, androidImageBitmap2, drawCache.c, 0L, f, colorFilter3, 0, 858);
                }
            }
        }
        i = 0;
        z = this.d;
        drawCache = this.e;
        if (!z) {
            androidImageBitmap3 = drawCache.a;
            if (androidImageBitmap3 == null) {
            }
        }
        if (i != 1) {
        }
        this.h = blendModeColorFilter;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.i() >> 32));
        MutableState mutableState22 = this.i;
        this.k = intBitsToFloat2 / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState22).getValue()).a >> 32));
        this.l = Float.intBitsToFloat((int) (drawScope.i() & 4294967295L)) / Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState22).getValue()).a & 4294967295L));
        long ceil2 = (((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.i() >> 32)))) << 32) | (((int) Math.ceil(Float.intBitsToFloat((int) (drawScope.i() & 4294967295L)))) & 4294967295L);
        LayoutDirection layoutDirection3 = drawScope.getLayoutDirection();
        androidImageBitmap = drawCache.a;
        AndroidCanvas androidCanvas2 = drawCache.b;
        if (androidImageBitmap == null) {
        }
        c = ' ';
        j = 4294967295L;
        androidImageBitmap = ImageBitmapKt.a((int) (ceil2 >> c), (int) (ceil2 & j), i);
        androidCanvas2 = CanvasKt.a(androidImageBitmap);
        drawCache.a = androidImageBitmap;
        drawCache.b = androidCanvas2;
        drawCache.d = i;
        drawCache.c = ceil2;
        CanvasDrawScope canvasDrawScope2 = drawCache.e;
        long a2 = IntSizeKt.a(ceil2);
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope2.j;
        Density density2 = drawParams3.a;
        LayoutDirection layoutDirection22 = drawParams3.b;
        Canvas canvas2 = drawParams3.c;
        long j32 = drawParams3.d;
        drawParams3.a = drawScope;
        drawParams3.b = layoutDirection3;
        drawParams3.c = androidCanvas2;
        drawParams3.d = a2;
        androidCanvas2.g();
        DrawScope.r0(canvasDrawScope2, Color.b, 0L, 0.0f, null, 62);
        this.m.b(canvasDrawScope2);
        androidCanvas2.r();
        CanvasDrawScope.DrawParams drawParams22 = canvasDrawScope2.j;
        drawParams22.a = density2;
        drawParams22.b = layoutDirection22;
        drawParams22.c = canvas2;
        drawParams22.d = j32;
        androidImageBitmap.a.prepareToDraw();
        this.d = false;
        this.j = drawScope.i();
        if (colorFilter == null) {
        }
        androidImageBitmap2 = drawCache.a;
        if (androidImageBitmap2 == null) {
        }
        DrawScope.A(drawScope, androidImageBitmap2, drawCache.c, 0L, f, colorFilter3, 0, 858);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Params: \tname: ");
        sb.append(this.c);
        sb.append("\n\tviewportWidth: ");
        MutableState mutableState = this.i;
        sb.append(Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState).getValue()).a >> 32)));
        sb.append("\n\tviewportHeight: ");
        sb.append(Float.intBitsToFloat((int) (((Size) ((SnapshotMutableStateImpl) mutableState).getValue()).a & 4294967295L)));
        sb.append("\n");
        return sb.toString();
    }
}

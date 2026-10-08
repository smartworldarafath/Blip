package androidx.compose.foundation;

import android.graphics.Bitmap;
import androidx.compose.foundation.BorderKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.h;
import defpackage.k8;
import defpackage.p4;
import defpackage.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x01d7, code lost:
    
        if (r18 != false) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f4  */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        float ceil;
        boolean z;
        final long j;
        final long j2;
        final DrawStyle stroke;
        int i;
        BlendModeColorFilter blendModeColorFilter;
        ImageBitmapConfig imageBitmapConfig;
        ImageBitmapConfig imageBitmapConfig2;
        boolean z2;
        SolidColor solidColor;
        BlendModeColorFilter blendModeColorFilter2;
        AndroidPath androidPath;
        CanvasDrawScope canvasDrawScope;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1;
        float f;
        float f2;
        long d;
        GestureConnection gestureConnection;
        boolean booleanValue;
        int i2 = this.j;
        Object obj2 = this.k;
        switch (i2) {
            case 0:
                BorderModifierNode borderModifierNode = (BorderModifierNode) obj2;
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                if (cacheDrawScope.getDensity() * borderModifierNode.A >= 0.0f && Size.c(cacheDrawScope.j.i()) > 0.0f) {
                    if (Dp.b(borderModifierNode.A, 0.0f)) {
                        ceil = 1.0f;
                    } else {
                        ceil = (float) Math.ceil(cacheDrawScope.getDensity() * borderModifierNode.A);
                    }
                    final float min = Math.min(ceil, (float) Math.ceil(Size.c(cacheDrawScope.j.i()) / 2.0f));
                    final float f3 = min / 2.0f;
                    final long floatToRawIntBits = (Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L);
                    float intBitsToFloat = Float.intBitsToFloat((int) (cacheDrawScope.j.i() >> 32)) - min;
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (cacheDrawScope.j.i() & 4294967295L)) - min;
                    final long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                    float f4 = min * 2.0f;
                    if (f4 > Size.c(cacheDrawScope.j.i())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Outline a = borderModifierNode.C.a(cacheDrawScope.j.i(), cacheDrawScope.j.getLayoutDirection(), cacheDrawScope);
                    if (a instanceof Outline.Generic) {
                        SolidColor solidColor2 = borderModifierNode.B;
                        Outline.Generic generic = (Outline.Generic) a;
                        Path path = generic.a;
                        if (z) {
                            return cacheDrawScope.a(new defpackage.b(8, generic, solidColor2));
                        }
                        if (solidColor2 != null) {
                            blendModeColorFilter = ColorFilter.Companion.a(Color.b(solidColor2.a, 1.0f));
                            i = 1;
                        } else {
                            i = 0;
                            blendModeColorFilter = null;
                        }
                        Rect f5 = ((AndroidPath) path).f();
                        float f6 = f5.b;
                        float f7 = f5.a;
                        if (borderModifierNode.z == null) {
                            borderModifierNode.z = new BorderCache();
                        }
                        BorderCache borderCache = borderModifierNode.z;
                        borderCache.getClass();
                        AndroidPath androidPath2 = borderCache.d;
                        AndroidPath androidPath3 = androidPath2;
                        if (androidPath2 == null) {
                            AndroidPath a2 = AndroidPath_androidKt.a();
                            borderCache.d = a2;
                            androidPath3 = a2;
                        }
                        androidPath3.i();
                        Path.c(androidPath3, f5);
                        androidPath3.h(androidPath3, path, 0);
                        ?? obj3 = new Object();
                        long ceil2 = (((int) Math.ceil(f5.c - f7)) << 32) | (((int) Math.ceil(f5.d - f6)) & 4294967295L);
                        BorderCache borderCache2 = borderModifierNode.z;
                        borderCache2.getClass();
                        AndroidImageBitmap androidImageBitmap = borderCache2.a;
                        AndroidCanvas androidCanvas = borderCache2.b;
                        if (androidImageBitmap != null) {
                            imageBitmapConfig = new ImageBitmapConfig(androidImageBitmap.a());
                        } else {
                            imageBitmapConfig = null;
                        }
                        try {
                            try {
                                if (imageBitmapConfig == null || imageBitmapConfig.a != 0) {
                                    if (androidImageBitmap != null) {
                                        imageBitmapConfig2 = new ImageBitmapConfig(androidImageBitmap.a());
                                    } else {
                                        imageBitmapConfig2 = null;
                                    }
                                    if (imageBitmapConfig2 == null || i != imageBitmapConfig2.a) {
                                        z2 = false;
                                        if (androidImageBitmap == null && androidCanvas != null) {
                                            blendModeColorFilter2 = blendModeColorFilter;
                                            androidPath = androidPath3;
                                            float intBitsToFloat3 = Float.intBitsToFloat((int) (cacheDrawScope.j.i() >> 32));
                                            Bitmap bitmap = androidImageBitmap.a;
                                            solidColor = solidColor2;
                                            if (intBitsToFloat3 <= bitmap.getWidth()) {
                                                if (Float.intBitsToFloat((int) (cacheDrawScope.j.i() & 4294967295L)) <= bitmap.getHeight()) {
                                                }
                                            }
                                        } else {
                                            solidColor = solidColor2;
                                            blendModeColorFilter2 = blendModeColorFilter;
                                            androidPath = androidPath3;
                                        }
                                        androidImageBitmap = ImageBitmapKt.a((int) (ceil2 >> 32), (int) (ceil2 & 4294967295L), i);
                                        borderCache2.a = androidImageBitmap;
                                        androidCanvas = androidx.compose.ui.graphics.CanvasKt.a(androidImageBitmap);
                                        borderCache2.b = androidCanvas;
                                        canvasDrawScope = borderCache2.c;
                                        if (canvasDrawScope == null) {
                                            canvasDrawScope = new CanvasDrawScope();
                                            borderCache2.c = canvasDrawScope;
                                        }
                                        canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                                        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.j;
                                        long a3 = IntSizeKt.a(ceil2);
                                        LayoutDirection layoutDirection = cacheDrawScope.j.getLayoutDirection();
                                        Density density = drawParams.a;
                                        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
                                        LayoutDirection layoutDirection2 = drawParams.b;
                                        BlendModeColorFilter blendModeColorFilter3 = blendModeColorFilter2;
                                        Canvas canvas = drawParams.c;
                                        long j3 = drawParams.d;
                                        drawParams.a = cacheDrawScope;
                                        drawParams.b = layoutDirection;
                                        drawParams.c = androidCanvas;
                                        drawParams.d = a3;
                                        androidCanvas.g();
                                        DrawScope.r0(canvasDrawScope2, Color.b, a3, 0.0f, null, 58);
                                        f = -f7;
                                        f2 = -f6;
                                        canvasDrawScope$drawContext$1.a.c(f, f2);
                                        SolidColor solidColor3 = solidColor;
                                        DrawScope.H(canvasDrawScope2, generic.a, solidColor3, 0.0f, new Stroke(f4, 0.0f, 0, 0, 30), 52);
                                        float intBitsToFloat4 = (Float.intBitsToFloat((int) (canvasDrawScope2.i() >> 32)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.i() >> 32));
                                        float intBitsToFloat5 = (Float.intBitsToFloat((int) (canvasDrawScope2.i() & 4294967295L)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.i() & 4294967295L));
                                        long B0 = canvasDrawScope2.B0();
                                        AndroidCanvas androidCanvas2 = androidCanvas;
                                        AndroidPath androidPath4 = androidPath;
                                        d = canvasDrawScope$drawContext$1.d();
                                        canvasDrawScope$drawContext$1.a().g();
                                        canvasDrawScope$drawContext$1.a.b(intBitsToFloat4, intBitsToFloat5, B0);
                                        DrawScope.H(canvasDrawScope2, androidPath4, solidColor3, 0.0f, null, 28);
                                        canvasDrawScope$drawContext$1.a.c(-f, -f2);
                                        androidCanvas2.r();
                                        drawParams.a = density;
                                        drawParams.b = layoutDirection2;
                                        drawParams.c = canvas;
                                        drawParams.d = j3;
                                        androidImageBitmap.a.prepareToDraw();
                                        obj3.j = androidImageBitmap;
                                        return cacheDrawScope.a(new p4(f5, (Ref$ObjectRef) obj3, ceil2, blendModeColorFilter3));
                                    }
                                }
                                canvasDrawScope$drawContext$1.a.b(intBitsToFloat4, intBitsToFloat5, B0);
                                DrawScope.H(canvasDrawScope2, androidPath4, solidColor3, 0.0f, null, 28);
                                canvasDrawScope$drawContext$1.a.c(-f, -f2);
                                androidCanvas2.r();
                                drawParams.a = density;
                                drawParams.b = layoutDirection2;
                                drawParams.c = canvas;
                                drawParams.d = j3;
                                androidImageBitmap.a.prepareToDraw();
                                obj3.j = androidImageBitmap;
                                return cacheDrawScope.a(new p4(f5, (Ref$ObjectRef) obj3, ceil2, blendModeColorFilter3));
                            } finally {
                                canvasDrawScope$drawContext$1.a().r();
                                canvasDrawScope$drawContext$1.h(d);
                            }
                            SolidColor solidColor32 = solidColor;
                            DrawScope.H(canvasDrawScope2, generic.a, solidColor32, 0.0f, new Stroke(f4, 0.0f, 0, 0, 30), 52);
                            float intBitsToFloat42 = (Float.intBitsToFloat((int) (canvasDrawScope2.i() >> 32)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.i() >> 32));
                            float intBitsToFloat52 = (Float.intBitsToFloat((int) (canvasDrawScope2.i() & 4294967295L)) + 1.0f) / Float.intBitsToFloat((int) (canvasDrawScope2.i() & 4294967295L));
                            long B02 = canvasDrawScope2.B0();
                            AndroidCanvas androidCanvas22 = androidCanvas;
                            AndroidPath androidPath42 = androidPath;
                            d = canvasDrawScope$drawContext$1.d();
                            canvasDrawScope$drawContext$1.a().g();
                        } catch (Throwable th) {
                            canvasDrawScope$drawContext$1.a.c(-f, -f2);
                            throw th;
                        }
                        z2 = true;
                        if (androidImageBitmap == null) {
                        }
                        solidColor = solidColor2;
                        blendModeColorFilter2 = blendModeColorFilter;
                        androidPath = androidPath3;
                        androidImageBitmap = ImageBitmapKt.a((int) (ceil2 >> 32), (int) (ceil2 & 4294967295L), i);
                        borderCache2.a = androidImageBitmap;
                        androidCanvas = androidx.compose.ui.graphics.CanvasKt.a(androidImageBitmap);
                        borderCache2.b = androidCanvas;
                        canvasDrawScope = borderCache2.c;
                        if (canvasDrawScope == null) {
                        }
                        canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.j;
                        long a32 = IntSizeKt.a(ceil2);
                        LayoutDirection layoutDirection3 = cacheDrawScope.j.getLayoutDirection();
                        Density density2 = drawParams2.a;
                        CanvasDrawScope canvasDrawScope22 = canvasDrawScope;
                        LayoutDirection layoutDirection22 = drawParams2.b;
                        BlendModeColorFilter blendModeColorFilter32 = blendModeColorFilter2;
                        Canvas canvas2 = drawParams2.c;
                        long j32 = drawParams2.d;
                        drawParams2.a = cacheDrawScope;
                        drawParams2.b = layoutDirection3;
                        drawParams2.c = androidCanvas;
                        drawParams2.d = a32;
                        androidCanvas.g();
                        DrawScope.r0(canvasDrawScope22, Color.b, a32, 0.0f, null, 58);
                        f = -f7;
                        f2 = -f6;
                        canvasDrawScope$drawContext$1.a.c(f, f2);
                    } else {
                        if (a instanceof Outline.Rounded) {
                            final SolidColor solidColor4 = borderModifierNode.B;
                            RoundRect roundRect = ((Outline.Rounded) a).a;
                            if (RoundRectKt.b(roundRect)) {
                                final long j4 = roundRect.e;
                                final Stroke stroke2 = new Stroke(min, 0.0f, 0, 0, 30);
                                final boolean z3 = z;
                                return cacheDrawScope.a(new Function1() { // from class: o4
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        long j5;
                                        LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj4);
                                        layoutNodeDrawScope.a();
                                        CanvasDrawScope canvasDrawScope3 = layoutNodeDrawScope.j;
                                        boolean z4 = z3;
                                        Brush brush = solidColor4;
                                        long j6 = j4;
                                        if (z4) {
                                            DrawScope.k(layoutNodeDrawScope, brush, 0L, 0L, j6, null, 246);
                                        } else {
                                            float intBitsToFloat6 = Float.intBitsToFloat((int) (j6 >> 32));
                                            float f8 = f3;
                                            if (intBitsToFloat6 < f8) {
                                                float intBitsToFloat7 = Float.intBitsToFloat((int) (canvasDrawScope3.i() >> 32));
                                                float f9 = min;
                                                float f10 = intBitsToFloat7 - f9;
                                                float intBitsToFloat8 = Float.intBitsToFloat((int) (canvasDrawScope3.i() & 4294967295L)) - f9;
                                                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$12 = canvasDrawScope3.k;
                                                long d2 = canvasDrawScope$drawContext$12.d();
                                                canvasDrawScope$drawContext$12.a().g();
                                                try {
                                                    canvasDrawScope$drawContext$12.a.a.a().n(f9, f9, f10, intBitsToFloat8, 0);
                                                    j5 = d2;
                                                    try {
                                                        DrawScope.k(layoutNodeDrawScope, brush, 0L, 0L, j6, null, 246);
                                                        q.v(canvasDrawScope$drawContext$12, j5);
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        q.v(canvasDrawScope$drawContext$12, j5);
                                                        throw th;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    j5 = d2;
                                                }
                                            } else {
                                                DrawScope.k(layoutNodeDrawScope, brush, floatToRawIntBits, floatToRawIntBits2, BorderKt.a(j6, f8), stroke2, 208);
                                            }
                                        }
                                        return Unit.a;
                                    }
                                });
                            }
                            boolean z4 = z;
                            if (borderModifierNode.z == null) {
                                borderModifierNode.z = new BorderCache();
                            }
                            BorderCache borderCache3 = borderModifierNode.z;
                            borderCache3.getClass();
                            AndroidPath androidPath5 = borderCache3.d;
                            AndroidPath androidPath6 = androidPath5;
                            if (androidPath5 == null) {
                                AndroidPath a4 = AndroidPath_androidKt.a();
                                borderCache3.d = a4;
                                androidPath6 = a4;
                            }
                            androidPath6.i();
                            Path.d(androidPath6, roundRect);
                            if (!z4) {
                                Path a5 = AndroidPath_androidKt.a();
                                Path.d(a5, new RoundRect(min, min, (roundRect.c - roundRect.a) - min, (roundRect.d - roundRect.b) - min, BorderKt.a(roundRect.e, min), BorderKt.a(roundRect.f, min), BorderKt.a(roundRect.g, min), BorderKt.a(roundRect.h, min)));
                                androidPath6.h(androidPath6, a5, 0);
                            }
                            return cacheDrawScope.a(new defpackage.b(7, androidPath6, solidColor4));
                        }
                        boolean z5 = z;
                        if (a instanceof Outline.Rectangle) {
                            final SolidColor solidColor5 = borderModifierNode.B;
                            if (z5) {
                                j = 0;
                            } else {
                                j = floatToRawIntBits;
                            }
                            if (z5) {
                                j2 = cacheDrawScope.j.i();
                            } else {
                                j2 = floatToRawIntBits2;
                            }
                            if (z5) {
                                stroke = Fill.a;
                            } else {
                                stroke = new Stroke(min, 0.0f, 0, 0, 30);
                            }
                            return cacheDrawScope.a(new Function1() { // from class: n4
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj4) {
                                    LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj4);
                                    layoutNodeDrawScope.a();
                                    DrawScope.O(layoutNodeDrawScope, solidColor5, j, j2, 0.0f, stroke, 104);
                                    return Unit.a;
                                }
                            });
                        }
                        k8.e();
                        return null;
                    }
                } else {
                    return cacheDrawScope.a(new h(23));
                }
                break;
            default:
                Function1 function1 = (Function1) obj2;
                TraversableNode traversableNode = (TraversableNode) obj;
                if (traversableNode instanceof GestureNode) {
                    GestureConnection gestureConnection2 = ((GestureNode) traversableNode).x;
                    if (gestureConnection2 != null) {
                        gestureConnection = gestureConnection2;
                    } else {
                        gestureConnection = null;
                    }
                    if (gestureConnection == null) {
                        booleanValue = true;
                    } else {
                        booleanValue = ((Boolean) function1.b(gestureConnection)).booleanValue();
                    }
                    return Boolean.valueOf(booleanValue);
                }
                u2.l("Node is not a GestureNode instance");
                return null;
        }
    }
}

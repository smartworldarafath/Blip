package androidx.compose.foundation.text.selection;

import android.graphics.Bitmap;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.b1;
import defpackage.c2;
import defpackage.z;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidSelectionHandles_androidKt {
    public static final void a(OffsetProvider offsetProvider, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        boolean h;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1090171650);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(offsetProvider);
            } else {
                h = gapComposer.h(offsetProvider);
            }
            if (h) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(alignment)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        boolean z3 = true;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if ((i2 & 112) == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((i2 & 14) != 4 && ((i2 & 8) == 0 || !gapComposer.f(offsetProvider))) {
                z3 = false;
            }
            boolean z4 = z2 | z3;
            Object K = gapComposer.K();
            if (z4 || K == Composer.Companion.a) {
                K = new HandlePositionProvider(alignment, offsetProvider);
                gapComposer.g0(K);
            }
            AndroidPopup_androidKt.a((HandlePositionProvider) K, null, new PopupProperties(false, SecureFlagPolicy.j, false, 0), composableLambdaImpl, gapComposer, ((i2 << 3) & 7168) | 384, 2);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(offsetProvider, alignment, composableLambdaImpl, i, 1);
        }
    }

    public static final void b(final OffsetProvider offsetProvider, final boolean z, final ResolvedTextDirection resolvedTextDirection, final boolean z2, long j, final float f, final Modifier modifier, Composer composer, final int i) {
        int i2;
        boolean z3;
        final long j2;
        int i3;
        long j3;
        boolean z4;
        final boolean z5;
        BiasAbsoluteAlignment biasAbsoluteAlignment;
        boolean z6;
        boolean z7;
        boolean z8;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean h;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-466280168);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(offsetProvider);
            } else {
                h = gapComposer.h(offsetProvider);
            }
            if (h) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i2 = i8 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.g(z)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i2 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.d(resolvedTextDirection.ordinal())) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.g(z2)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((1572864 & i) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 1048576;
            } else {
                i4 = 524288;
            }
            i2 |= i4;
        }
        if ((533651 & i2) != 533650) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i2 & 1, z3)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                i3 = i2 & (-57345);
                j3 = j;
            } else {
                i3 = i2 & (-57345);
                j3 = 9205357640488583168L;
            }
            gapComposer.q();
            if (z) {
                SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.a;
                if ((resolvedTextDirection == ResolvedTextDirection.j && !z2) || (resolvedTextDirection == ResolvedTextDirection.k && z2)) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z5 = z8;
            } else {
                SemanticsPropertyKey semanticsPropertyKey2 = SelectionHandlesKt.a;
                if ((resolvedTextDirection == ResolvedTextDirection.j && !z2) || (resolvedTextDirection == ResolvedTextDirection.k && z2)) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    z5 = true;
                } else {
                    z5 = false;
                }
            }
            if (z5) {
                biasAbsoluteAlignment = AbsoluteAlignment.b;
            } else {
                biasAbsoluteAlignment = AbsoluteAlignment.a;
            }
            int i9 = i3 & 14;
            if (i9 != 4 && ((i3 & 8) == 0 || !gapComposer.h(offsetProvider))) {
                z6 = false;
            } else {
                z6 = true;
            }
            if ((i3 & 112) == 32) {
                z7 = true;
            } else {
                z7 = false;
            }
            boolean g = z7 | z6 | gapComposer.g(z5);
            Object K = gapComposer.K();
            if (g || K == Composer.Companion.a) {
                K = new Function1() { // from class: x1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        Handle handle;
                        SelectionHandleAnchor selectionHandleAnchor;
                        boolean z9;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        long a = OffsetProvider.this.a();
                        SemanticsPropertyKey semanticsPropertyKey3 = SelectionHandlesKt.a;
                        if (z) {
                            handle = Handle.k;
                        } else {
                            handle = Handle.l;
                        }
                        if (z5) {
                            selectionHandleAnchor = SelectionHandleAnchor.j;
                        } else {
                            selectionHandleAnchor = SelectionHandleAnchor.l;
                        }
                        SelectionHandleAnchor selectionHandleAnchor2 = selectionHandleAnchor;
                        if ((9223372034707292159L & a) != 9205357640488583168L) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        semanticsPropertyReceiver.b(semanticsPropertyKey3, new SelectionHandleInfo(handle, a, selectionHandleAnchor2, z9));
                        return Unit.a;
                    }
                };
                gapComposer.g0(K);
            }
            final Modifier a = SemanticsModifierKt.a(modifier, false, (Function1) K);
            final ViewConfiguration viewConfiguration = (ViewConfiguration) gapComposer.j(CompositionLocalsKt.t);
            long j4 = j3;
            BiasAbsoluteAlignment biasAbsoluteAlignment2 = biasAbsoluteAlignment;
            j2 = j4;
            a(offsetProvider, biasAbsoluteAlignment2, ComposableLambdaKt.b(1365123137, new Function2() { // from class: y1
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    boolean z9;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if ((intValue & 3) != 2) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z9)) {
                        ProvidedValue b = CompositionLocalsKt.t.b(ViewConfiguration.this);
                        final long j5 = j2;
                        final boolean z10 = z5;
                        final Modifier modifier2 = a;
                        final OffsetProvider offsetProvider2 = offsetProvider;
                        CompositionLocalKt.a(b, ComposableLambdaKt.b(1260045569, new Function2() { // from class: a2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj3, Object obj4) {
                                boolean z11;
                                Arrangement.Horizontal horizontal;
                                Composer composer3 = (Composer) obj3;
                                int intValue2 = ((Integer) obj4).intValue();
                                final int i10 = 1;
                                final int i11 = 0;
                                if ((intValue2 & 3) != 2) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (gapComposer3.N(intValue2 & 1, z11)) {
                                    long j6 = j5;
                                    boolean z12 = z10;
                                    Modifier modifier3 = modifier2;
                                    final OffsetProvider offsetProvider3 = offsetProvider2;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                    if (j6 != 9205357640488583168L) {
                                        gapComposer3.W(3458246);
                                        if (z12) {
                                            horizontal = Arrangement.Absolute.b;
                                        } else {
                                            horizontal = Arrangement.Absolute.a;
                                        }
                                        Modifier i12 = SizeKt.i(modifier3, DpSize.b(j6), DpSize.a(j6), 0.0f, 0.0f, 12);
                                        RowMeasurePolicy a2 = RowKt.a(horizontal, Alignment.Companion.j, gapComposer3, 0);
                                        int hashCode = Long.hashCode(gapComposer3.T);
                                        PersistentCompositionLocalMap l = gapComposer3.l();
                                        Modifier c = ComposedModifierKt.c(gapComposer3, i12);
                                        ComposeUiNode.b.getClass();
                                        gapComposer3.Z();
                                        if (gapComposer3.S) {
                                            gapComposer3.k(LayoutNode.b0);
                                        } else {
                                            gapComposer3.j0();
                                        }
                                        Updater.c(gapComposer3, a2, ComposeUiNode.Companion.d);
                                        Updater.c(gapComposer3, l, ComposeUiNode.Companion.c);
                                        Updater.c(gapComposer3, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                        Updater.b(gapComposer3);
                                        Updater.c(gapComposer3, c, ComposeUiNode.Companion.b);
                                        boolean h2 = gapComposer3.h(offsetProvider3);
                                        Object K2 = gapComposer3.K();
                                        if (h2 || K2 == composer$Companion$Empty$1) {
                                            K2 = new Function0() { // from class: b2
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object a() {
                                                    int i13 = i11;
                                                    boolean z13 = false;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i13) {
                                                        case 0:
                                                            if ((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L) {
                                                                z13 = true;
                                                            }
                                                            return Boolean.valueOf(z13);
                                                        default:
                                                            if ((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L) {
                                                                z13 = true;
                                                            }
                                                            return Boolean.valueOf(z13);
                                                    }
                                                }
                                            };
                                            gapComposer3.g0(K2);
                                        }
                                        AndroidSelectionHandles_androidKt.c(Modifier.Companion.b, (Function0) K2, z12, gapComposer3, 6);
                                        gapComposer3.p(true);
                                        gapComposer3.p(false);
                                    } else {
                                        gapComposer3.W(4389176);
                                        boolean h3 = gapComposer3.h(offsetProvider3);
                                        Object K3 = gapComposer3.K();
                                        if (h3 || K3 == composer$Companion$Empty$1) {
                                            K3 = new Function0() { // from class: b2
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object a() {
                                                    int i13 = i10;
                                                    boolean z13 = false;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i13) {
                                                        case 0:
                                                            if ((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L) {
                                                                z13 = true;
                                                            }
                                                            return Boolean.valueOf(z13);
                                                        default:
                                                            if ((9223372034707292159L & offsetProvider4.a()) != 9205357640488583168L) {
                                                                z13 = true;
                                                            }
                                                            return Boolean.valueOf(z13);
                                                    }
                                                }
                                            };
                                            gapComposer3.g0(K3);
                                        }
                                        AndroidSelectionHandles_androidKt.c(modifier3, (Function0) K3, z12, gapComposer3, 0);
                                        gapComposer3.p(false);
                                    }
                                } else {
                                    gapComposer3.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer2), gapComposer2, 56);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, i9 | 384);
        } else {
            gapComposer.Q();
            j2 = j;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final long j5 = j2;
            r.d = new Function2() { // from class: z1
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AndroidSelectionHandles_androidKt.b(OffsetProvider.this, z, resolvedTextDirection, z2, j5, f, modifier, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, Function0 function0, boolean z, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2111672474);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if (gapComposer.h(function0)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i2 | i3;
        if (gapComposer.g(z)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i7 = i6 | i4;
        int i8 = 1;
        if ((i7 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i7 & 1, z2)) {
            SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.a;
            SpacerKt.a(gapComposer, ComposedModifierKt.a(SizeKt.l(modifier, 25.0f, 25.0f), new z(i8, function0, z)));
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c2(modifier, function0, z, i, 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r1 <= r6.getHeight()) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ImageBitmap d(CacheDrawScope cacheDrawScope, float f) {
        int ceil = ((int) Math.ceil(f)) * 2;
        AndroidImageBitmap androidImageBitmap = HandleImageCache.a;
        AndroidCanvas androidCanvas = HandleImageCache.b;
        CanvasDrawScope canvasDrawScope = HandleImageCache.c;
        if (androidImageBitmap != null && androidCanvas != null) {
            Bitmap bitmap = androidImageBitmap.a;
            if (ceil <= bitmap.getWidth()) {
            }
        }
        androidImageBitmap = ImageBitmapKt.a(ceil, ceil, 1);
        HandleImageCache.a = androidImageBitmap;
        androidCanvas = CanvasKt.a(androidImageBitmap);
        HandleImageCache.b = androidCanvas;
        AndroidImageBitmap androidImageBitmap2 = androidImageBitmap;
        AndroidCanvas androidCanvas2 = androidCanvas;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            HandleImageCache.c = canvasDrawScope;
        }
        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope2.j;
        LayoutDirection layoutDirection = cacheDrawScope.j.getLayoutDirection();
        Bitmap bitmap2 = androidImageBitmap2.a;
        float width = bitmap2.getWidth();
        float height = bitmap2.getHeight();
        Density density = drawParams.a;
        LayoutDirection layoutDirection2 = drawParams.b;
        Canvas canvas = drawParams.c;
        long j = drawParams.d;
        drawParams.a = cacheDrawScope;
        drawParams.b = layoutDirection;
        drawParams.c = androidCanvas2;
        drawParams.d = (Float.floatToRawIntBits(width) << 32) | (Float.floatToRawIntBits(height) & 4294967295L);
        androidCanvas2.g();
        DrawScope.r0(canvasDrawScope2, Color.b, canvasDrawScope2.i(), 0.0f, null, 58);
        DrawScope.r0(canvasDrawScope2, ColorKt.c(4278190080L), (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L), 0.0f, null, 120);
        DrawScope.J(canvasDrawScope2, ColorKt.c(4278190080L), f, (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L), 0.0f, 120);
        androidCanvas2.r();
        drawParams.a = density;
        drawParams.b = layoutDirection2;
        drawParams.c = canvas;
        drawParams.d = j;
        return androidImageBitmap2;
    }
}

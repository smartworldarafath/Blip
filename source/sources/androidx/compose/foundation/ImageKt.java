package androidx.compose.foundation;

import androidx.compose.foundation.ImageKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.q7;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImageKt {
    /* JADX WARN: Removed duplicated region for block: B:104:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Painter painter, final String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        int i5;
        Alignment alignment2;
        int i6;
        int i7;
        ContentScale contentScale2;
        int i8;
        int i9;
        float f2;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z;
        final ColorFilter colorFilter2;
        final Modifier modifier3;
        final Alignment alignment3;
        final ContentScale contentScale3;
        final float f3;
        RecomposeScopeImpl r;
        Modifier modifier4;
        Alignment alignment4;
        float f4;
        ColorFilter colorFilter3;
        boolean z2;
        int i14;
        boolean h;
        int i15;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1142754848);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(painter);
            } else {
                h = gapComposer.h(painter);
            }
            if (h) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i3 = i15 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i3 |= i14;
        }
        int i16 = i2 & 4;
        if (i16 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
            i5 = i2 & 8;
            if (i5 == 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                alignment2 = alignment;
                if (gapComposer.f(alignment2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i3 |= i6;
                i7 = i2 & 16;
                if (i7 != 0) {
                    i3 |= 24576;
                } else if ((i & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (gapComposer.f(contentScale2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                    i9 = i2 & 32;
                    if (i9 == 0) {
                        i3 |= 196608;
                    } else if ((196608 & i) == 0) {
                        f2 = f;
                        if (gapComposer.c(f2)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                        i11 = i2 & 64;
                        if (i11 != 0) {
                            i3 |= 1572864;
                        } else if ((i & 1572864) == 0) {
                            if (gapComposer.f(colorFilter)) {
                                i12 = 1048576;
                            } else {
                                i12 = 524288;
                            }
                            i3 |= i12;
                        }
                        i13 = i3;
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (gapComposer.N(i13 & 1, z)) {
                            Modifier modifier5 = Modifier.Companion.b;
                            if (i16 != 0) {
                                modifier4 = modifier5;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i5 != 0) {
                                alignment4 = Alignment.Companion.e;
                            } else {
                                alignment4 = alignment2;
                            }
                            if (i7 != 0) {
                                contentScale2 = ContentScale.Companion.b;
                            }
                            if (i9 != 0) {
                                f4 = 1.0f;
                            } else {
                                f4 = f2;
                            }
                            if (i11 != 0) {
                                colorFilter3 = null;
                            } else {
                                colorFilter3 = colorFilter;
                            }
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                            if (str != null) {
                                gapComposer.W(1899222916);
                                if ((i13 & 112) == 32) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                Object K = gapComposer.K();
                                if (z2 || K == composer$Companion$Empty$1) {
                                    K = new q7(str, 2);
                                    gapComposer.g0(K);
                                }
                                modifier5 = SemanticsModifierKt.a(modifier5, false, (Function1) K);
                                gapComposer.p(false);
                            } else {
                                gapComposer.W(1899381698);
                                gapComposer.p(false);
                            }
                            Modifier b = ClipKt.b(modifier4.l(modifier5));
                            Modifier modifier6 = modifier4;
                            ContentScale contentScale4 = contentScale2;
                            Modifier a = PainterModifierKt.a(b, painter, alignment4, contentScale4, f4, colorFilter3, 2);
                            Object K2 = gapComposer.K();
                            if (K2 == composer$Companion$Empty$1) {
                                K2 = ImageKt$Image$1$1.a;
                                gapComposer.g0(K2);
                            }
                            MeasurePolicy measurePolicy = (MeasurePolicy) K2;
                            int hashCode = Long.hashCode(gapComposer.T);
                            Modifier c = ComposedModifierKt.c(gapComposer, a);
                            PersistentCompositionLocalMap l = gapComposer.l();
                            ComposeUiNode.b.getClass();
                            gapComposer.Z();
                            if (gapComposer.S) {
                                gapComposer.k(LayoutNode.b0);
                            } else {
                                gapComposer.j0();
                            }
                            Updater.c(gapComposer, measurePolicy, ComposeUiNode.Companion.d);
                            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                            Updater.b(gapComposer);
                            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                            gapComposer.p(true);
                            f3 = f4;
                            colorFilter2 = colorFilter3;
                            alignment3 = alignment4;
                            contentScale3 = contentScale4;
                            modifier3 = modifier6;
                        } else {
                            gapComposer.Q();
                            colorFilter2 = colorFilter;
                            modifier3 = modifier2;
                            alignment3 = alignment2;
                            contentScale3 = contentScale2;
                            f3 = f2;
                        }
                        r = gapComposer.r();
                        if (r != null) {
                            r.d = new Function2() { // from class: u9
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    ImageKt.a(Painter.this, str, modifier3, alignment3, contentScale3, f3, colorFilter2, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                                    return Unit.a;
                                }
                            };
                            return;
                        }
                        return;
                    }
                    f2 = f;
                    i11 = i2 & 64;
                    if (i11 != 0) {
                    }
                    i13 = i3;
                    if ((i3 & 599187) != 599186) {
                    }
                    if (gapComposer.N(i13 & 1, z)) {
                    }
                    r = gapComposer.r();
                    if (r != null) {
                    }
                }
                contentScale2 = contentScale;
                i9 = i2 & 32;
                if (i9 == 0) {
                }
                f2 = f;
                i11 = i2 & 64;
                if (i11 != 0) {
                }
                i13 = i3;
                if ((i3 & 599187) != 599186) {
                }
                if (gapComposer.N(i13 & 1, z)) {
                }
                r = gapComposer.r();
                if (r != null) {
                }
            }
            alignment2 = alignment;
            i7 = i2 & 16;
            if (i7 != 0) {
            }
            contentScale2 = contentScale;
            i9 = i2 & 32;
            if (i9 == 0) {
            }
            f2 = f;
            i11 = i2 & 64;
            if (i11 != 0) {
            }
            i13 = i3;
            if ((i3 & 599187) != 599186) {
            }
            if (gapComposer.N(i13 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        modifier2 = modifier;
        i5 = i2 & 8;
        if (i5 == 0) {
        }
        alignment2 = alignment;
        i7 = i2 & 16;
        if (i7 != 0) {
        }
        contentScale2 = contentScale;
        i9 = i2 & 32;
        if (i9 == 0) {
        }
        f2 = f;
        i11 = i2 & 64;
        if (i11 != 0) {
        }
        i13 = i3;
        if ((i3 & 599187) != 599186) {
        }
        if (gapComposer.N(i13 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }

    public static final void b(ImageVector imageVector, String str, Modifier modifier, BlendModeColorFilter blendModeColorFilter, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            modifier = Modifier.Companion.b;
        }
        Modifier modifier2 = modifier;
        if ((i2 & 64) != 0) {
            blendModeColorFilter = null;
        }
        a(VectorPainterKt.b(imageVector, composer), str, modifier2, Alignment.Companion.e, ContentScale.Companion.b, 1.0f, blendModeColorFilter, composer, (i & 112) | 8 | (i & 896) | (i & 7168) | (57344 & i) | (458752 & i) | (3670016 & i), 0);
    }
}

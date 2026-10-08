package androidx.compose.foundation.text;

import android.os.Trace;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNodeKt;
import androidx.compose.foundation.text.modifiers.TextStringSimpleElement;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.StringAnnotation;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.g4;
import defpackage.i2;
import defpackage.i4;
import defpackage.kb;
import defpackage.n5;
import defpackage.o1;
import defpackage.r1;
import defpackage.vc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BasicTextKt {
    public static final void a(final AnnotatedString annotatedString, final Modifier modifier, final TextStyle textStyle, final int i, final boolean z, final int i2, final int i3, final Map map, Composer composer, final int i4) {
        int i5;
        TextStyle textStyle2;
        boolean z2;
        boolean z3;
        int i6;
        boolean z4;
        boolean z5;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1343466571);
        if ((i4 & 6) == 0) {
            if (gapComposer.f(annotatedString)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i5 = i16 | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i15 = 32;
            } else {
                i15 = 16;
            }
            i5 |= i15;
        }
        if ((i4 & 384) == 0) {
            textStyle2 = textStyle;
            if (gapComposer.f(textStyle2)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i5 |= i14;
        } else {
            textStyle2 = textStyle;
        }
        if ((i4 & 3072) == 0) {
            if (gapComposer.h(null)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i5 |= i13;
        }
        if ((i4 & 24576) == 0) {
            if (gapComposer.d(i)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i5 |= i12;
        }
        if ((196608 & i4) == 0) {
            z2 = z;
            if (gapComposer.g(z2)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i5 |= i11;
        } else {
            z2 = z;
        }
        if ((1572864 & i4) == 0) {
            if (gapComposer.d(i2)) {
                i10 = 1048576;
            } else {
                i10 = 524288;
            }
            i5 |= i10;
        }
        if ((12582912 & i4) == 0) {
            if (gapComposer.d(i3)) {
                i9 = 8388608;
            } else {
                i9 = 4194304;
            }
            i5 |= i9;
        }
        if ((100663296 & i4) == 0) {
            if (gapComposer.h(map)) {
                i8 = 67108864;
            } else {
                i8 = 33554432;
            }
            i5 |= i8;
        }
        if ((805306368 & i4) == 0) {
            if (gapComposer.h(null)) {
                i7 = 536870912;
            } else {
                i7 = 268435456;
            }
            i5 |= i7;
        }
        if ((306783379 & i5) == 306783378) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (gapComposer.N(i5 & 1, z3)) {
            HeightInLinesModifierKt.b(i3, i2);
            if (gapComposer.j(SelectionRegistrarKt.a) == null) {
                gapComposer.W(1588900273);
                gapComposer.p(false);
                Pair pair = AnnotatedStringResolveInlineContentKt.a;
                int length = annotatedString.k.length();
                List list = annotatedString.j;
                if (list != null) {
                    int size = list.size();
                    int i17 = 0;
                    while (i17 < size) {
                        AnnotatedString.Range range = (AnnotatedString.Range) list.get(i17);
                        if (range.a instanceof StringAnnotation) {
                            i6 = i5;
                            if ("androidx.compose.foundation.text.inlineContent".equals(range.d) && AnnotatedStringKt.b(0, length, range.b, range.c)) {
                                z4 = true;
                                break;
                            }
                        } else {
                            i6 = i5;
                        }
                        i17++;
                        i5 = i6;
                    }
                }
                i6 = i5;
                z4 = false;
                boolean a = TextAnnotatedStringNodeKt.a(annotatedString);
                FontFamily.Resolver resolver = (FontFamily.Resolver) gapComposer.j(CompositionLocalsKt.k);
                if (!z4 && !a) {
                    gapComposer.W(1589148149);
                    BasicText_androidKt.a(annotatedString, textStyle2, resolver, null, z2, gapComposer);
                    Modifier e = e(modifier, annotatedString, textStyle, null, i, z, i2, i3, resolver, null, null, null, null);
                    int hashCode = Long.hashCode(gapComposer.T);
                    Modifier c = ComposedModifierKt.c(gapComposer, e);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(LayoutNode.b0);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, EmptyMeasurePolicy.a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                    Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    gapComposer.p(true);
                    gapComposer.p(false);
                    gapComposer = gapComposer;
                } else {
                    gapComposer.W(1590195670);
                    if ((i6 & 14) == 4) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    Object K = gapComposer.K();
                    Object obj = Composer.Companion.a;
                    if (z5 || K == obj) {
                        K = SnapshotStateKt.g(annotatedString);
                        gapComposer.g0(K);
                    }
                    MutableState mutableState = (MutableState) K;
                    AnnotatedString annotatedString2 = (AnnotatedString) mutableState.getValue();
                    boolean f = gapComposer.f(mutableState);
                    Object K2 = gapComposer.K();
                    if (f || K2 == obj) {
                        K2 = new i2(mutableState, 2);
                        gapComposer.g0(K2);
                    }
                    int i18 = i6 << 6;
                    gapComposer = gapComposer;
                    c(modifier, annotatedString2, z4, map, textStyle, i, z, i2, i3, resolver, (Function1) K2, gapComposer, ((i6 >> 3) & 910) | ((i6 >> 12) & 57344) | ((i6 << 9) & 458752) | (3670016 & i18) | (29360128 & i18) | (234881024 & i18) | (i18 & 1879048192), ((i6 >> 21) & 896) | 24576);
                    gapComposer.p(false);
                }
            } else {
                io.sentry.d.i();
                return;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: h4
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    BasicTextKt.a(AnnotatedString.this, modifier, textStyle, i, z, i2, i3, map, (Composer) obj2, RecomposeScopeImplKt.a(i4 | 1));
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(final String str, Modifier modifier, final TextStyle textStyle, int i, boolean z, int i2, int i3, ColorProducer colorProducer, Composer composer, int i4, int i5) {
        int i6;
        Modifier modifier2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z3;
        ColorProducer colorProducer2;
        Modifier modifier3;
        int i24;
        boolean z4;
        int i25;
        int i26;
        RecomposeScopeImpl r;
        Modifier modifier4;
        int i27;
        final boolean z5;
        int i28;
        ColorProducer colorProducer3;
        boolean z6;
        int i29;
        int i30;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1040751001);
        if ((i4 & 6) == 0) {
            if (gapComposer.f(str)) {
                i30 = 4;
            } else {
                i30 = 2;
            }
            i6 = i30 | i4;
        } else {
            i6 = i4;
        }
        int i31 = i5 & 2;
        if (i31 != 0) {
            i6 |= 48;
        } else if ((i4 & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i6 |= i7;
            if ((i4 & 384) == 0) {
                if (gapComposer.f(textStyle)) {
                    i29 = 256;
                } else {
                    i29 = 128;
                }
                i6 |= i29;
            }
            if ((i5 & 8) == 0) {
                i6 |= 3072;
            } else if ((i4 & 3072) == 0) {
                if (gapComposer.h(null)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i6 |= i8;
            }
            i9 = i5 & 16;
            if (i9 == 0) {
                i6 |= 24576;
            } else if ((i4 & 24576) == 0) {
                i10 = i;
                if (gapComposer.d(i10)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i6 |= i11;
                i12 = i5 & 32;
                if (i12 != 0) {
                    i6 |= 196608;
                } else if ((196608 & i4) == 0) {
                    z2 = z;
                    if (gapComposer.g(z2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i6 |= i13;
                    i14 = i5 & 64;
                    if (i14 == 0) {
                        i6 |= 1572864;
                    } else if ((1572864 & i4) == 0) {
                        i15 = i2;
                        if (gapComposer.d(i15)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i6 |= i16;
                        i17 = i5 & 128;
                        if (i17 != 0) {
                            i6 |= 12582912;
                            i18 = i3;
                        } else {
                            i18 = i3;
                            if ((i4 & 12582912) == 0) {
                                if (gapComposer.d(i18)) {
                                    i19 = 8388608;
                                } else {
                                    i19 = 4194304;
                                }
                                i6 |= i19;
                            }
                        }
                        int i32 = i6;
                        i20 = i5 & 256;
                        if (i20 != 0) {
                            i32 |= 100663296;
                        } else if ((i4 & 100663296) == 0) {
                            i21 = i20;
                            if (gapComposer.h(colorProducer)) {
                                i22 = 67108864;
                            } else {
                                i22 = 33554432;
                            }
                            i32 |= i22;
                            i23 = i32 | 805306368;
                            if ((i23 & 306783379) == 306783378) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (!gapComposer.N(i23 & 1, z3)) {
                                if (i31 != 0) {
                                    modifier4 = Modifier.Companion.b;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if (i9 != 0) {
                                    i27 = 1;
                                } else {
                                    i27 = i10;
                                }
                                if (i12 != 0) {
                                    z5 = true;
                                } else {
                                    z5 = z2;
                                }
                                if (i14 != 0) {
                                    i15 = Integer.MAX_VALUE;
                                }
                                if (i17 != 0) {
                                    i28 = 1;
                                } else {
                                    i28 = i18;
                                }
                                if (i21 != 0) {
                                    colorProducer3 = null;
                                } else {
                                    colorProducer3 = colorProducer;
                                }
                                HeightInLinesModifierKt.b(i28, i15);
                                if (gapComposer.j(SelectionRegistrarKt.a) == null) {
                                    gapComposer.W(357055103);
                                    gapComposer.p(false);
                                    final FontFamily.Resolver resolver = (FontFamily.Resolver) gapComposer.j(CompositionLocalsKt.k);
                                    Executor executor = (Executor) gapComposer.j(BasicText_androidKt.a);
                                    if (executor != null && BasicText_androidKt.b(str.length())) {
                                        gapComposer.W(-1250263182);
                                        final LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
                                        final Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                                        try {
                                            executor.execute(new Runnable() { // from class: l4
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    TextStyle textStyle2 = TextStyle.this;
                                                    LayoutDirection layoutDirection2 = layoutDirection;
                                                    String str2 = str;
                                                    Density density2 = density;
                                                    FontFamily.Resolver resolver2 = resolver;
                                                    boolean z7 = z5;
                                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.a;
                                                    Trace.beginSection("BackgroundTextMeasurement");
                                                    try {
                                                        MutableSnapshot g = Snapshot.Companion.g(null, null);
                                                        try {
                                                            Snapshot j = g.j();
                                                            try {
                                                                TextStyle a = TextStyleKt.a(textStyle2, layoutDirection2);
                                                                EmptyList emptyList = EmptyList.j;
                                                                AndroidParagraphIntrinsics androidParagraphIntrinsics = new AndroidParagraphIntrinsics(str2, a, emptyList, emptyList, resolver2, density2, z7);
                                                                androidParagraphIntrinsics.c();
                                                                androidParagraphIntrinsics.b();
                                                                g.w().a();
                                                            } finally {
                                                                Snapshot.q(j);
                                                            }
                                                        } catch (Throwable th) {
                                                            try {
                                                                throw th;
                                                            } finally {
                                                                g.c();
                                                            }
                                                        }
                                                    } finally {
                                                        Trace.endSection();
                                                    }
                                                }
                                            });
                                        } catch (RejectedExecutionException unused) {
                                        }
                                        z6 = false;
                                        gapComposer.p(false);
                                    } else {
                                        z6 = false;
                                        gapComposer.W(-1248455541);
                                        gapComposer.p(false);
                                    }
                                    gapComposer.W(358076243);
                                    gapComposer.p(z6);
                                    int i33 = i28;
                                    ColorProducer colorProducer4 = colorProducer3;
                                    int i34 = i15;
                                    Modifier l = modifier4.l(new TextStringSimpleElement(str, textStyle, resolver, i27, z5, i34, i33, colorProducer4));
                                    int hashCode = Long.hashCode(gapComposer.T);
                                    Modifier c = ComposedModifierKt.c(gapComposer, l);
                                    PersistentCompositionLocalMap l2 = gapComposer.l();
                                    ComposeUiNode.b.getClass();
                                    gapComposer.Z();
                                    if (gapComposer.S) {
                                        gapComposer.k(LayoutNode.b0);
                                    } else {
                                        gapComposer.j0();
                                    }
                                    Updater.c(gapComposer, EmptyMeasurePolicy.a, ComposeUiNode.Companion.d);
                                    Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
                                    Updater.b(gapComposer);
                                    Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                                    Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                    gapComposer.p(true);
                                    modifier3 = modifier4;
                                    z4 = z5;
                                    i24 = i27;
                                    i26 = i34;
                                    i25 = i33;
                                    colorProducer2 = colorProducer4;
                                } else {
                                    io.sentry.d.i();
                                    return;
                                }
                            } else {
                                gapComposer.Q();
                                colorProducer2 = colorProducer;
                                modifier3 = modifier2;
                                i24 = i10;
                                z4 = z2;
                                i25 = i18;
                                i26 = i15;
                            }
                            r = gapComposer.r();
                            if (r == null) {
                                r.d = new g4(str, modifier3, textStyle, i24, z4, i26, i25, colorProducer2, i4, i5, 0);
                                return;
                            }
                            return;
                        }
                        i21 = i20;
                        i23 = i32 | 805306368;
                        if ((i23 & 306783379) == 306783378) {
                        }
                        if (!gapComposer.N(i23 & 1, z3)) {
                        }
                        r = gapComposer.r();
                        if (r == null) {
                        }
                    }
                    i15 = i2;
                    i17 = i5 & 128;
                    if (i17 != 0) {
                    }
                    int i322 = i6;
                    i20 = i5 & 256;
                    if (i20 != 0) {
                    }
                    i21 = i20;
                    i23 = i322 | 805306368;
                    if ((i23 & 306783379) == 306783378) {
                    }
                    if (!gapComposer.N(i23 & 1, z3)) {
                    }
                    r = gapComposer.r();
                    if (r == null) {
                    }
                }
                z2 = z;
                i14 = i5 & 64;
                if (i14 == 0) {
                }
                i15 = i2;
                i17 = i5 & 128;
                if (i17 != 0) {
                }
                int i3222 = i6;
                i20 = i5 & 256;
                if (i20 != 0) {
                }
                i21 = i20;
                i23 = i3222 | 805306368;
                if ((i23 & 306783379) == 306783378) {
                }
                if (!gapComposer.N(i23 & 1, z3)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            i10 = i;
            i12 = i5 & 32;
            if (i12 != 0) {
            }
            z2 = z;
            i14 = i5 & 64;
            if (i14 == 0) {
            }
            i15 = i2;
            i17 = i5 & 128;
            if (i17 != 0) {
            }
            int i32222 = i6;
            i20 = i5 & 256;
            if (i20 != 0) {
            }
            i21 = i20;
            i23 = i32222 | 805306368;
            if ((i23 & 306783379) == 306783378) {
            }
            if (!gapComposer.N(i23 & 1, z3)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        modifier2 = modifier;
        if ((i4 & 384) == 0) {
        }
        if ((i5 & 8) == 0) {
        }
        i9 = i5 & 16;
        if (i9 == 0) {
        }
        i10 = i;
        i12 = i5 & 32;
        if (i12 != 0) {
        }
        z2 = z;
        i14 = i5 & 64;
        if (i14 == 0) {
        }
        i15 = i2;
        i17 = i5 & 128;
        if (i17 != 0) {
        }
        int i322222 = i6;
        i20 = i5 & 256;
        if (i20 != 0) {
        }
        i21 = i20;
        i23 = i322222 | 805306368;
        if ((i23 & 306783379) == 306783378) {
        }
        if (!gapComposer.N(i23 & 1, z3)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v60, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r6v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, androidx.compose.runtime.MutableState] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r9v4, types: [androidx.compose.foundation.text.TextLinkScope, java.lang.Object] */
    public static final void c(final Modifier modifier, AnnotatedString annotatedString, final boolean z, final Map map, final TextStyle textStyle, final int i, final boolean z2, final int i2, final int i3, final FontFamily.Resolver resolver, final Function1 function1, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        final TextLinkScope textLinkScope;
        Function0 function0;
        TextLinkScope textLinkScope2;
        Function0 function02;
        Pair pair;
        i2 i2Var;
        ?? r8;
        Object obj;
        boolean z3;
        boolean z4;
        Object obj2;
        EmptyList emptyList;
        int i8;
        final AnnotatedString annotatedString2 = annotatedString;
        ?? r5 = (GapComposer) composer;
        r5.X(-2118572703);
        if ((i4 & 6) == 0) {
            i6 = (r5.f(modifier) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= r5.f(annotatedString2) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i6 |= r5.h(null) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i6 |= r5.g(z) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i6 |= r5.h(map) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i6 |= r5.f(textStyle) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i6 |= r5.d(i) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            i6 |= r5.g(z2) ? 8388608 : 4194304;
        }
        if ((i4 & 100663296) == 0) {
            i6 |= r5.d(i2) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i6 |= r5.d(i3) ? 536870912 : 268435456;
        }
        if ((i5 & 6) == 0) {
            i7 = i5 | (r5.h(resolver) ? 4 : 2);
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= r5.h(null) ? 32 : 16;
        }
        if ((i5 & 384) == 0) {
            i7 |= r5.h(null) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i7 |= r5.h(function1) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i7 |= (32768 & i5) == 0 ? r5.f(null) : r5.h(null) ? 16384 : 8192;
        }
        int i9 = i6;
        if (r5.N(i9 & 1, ((i9 & 306783379) == 306783378 && (i7 & 9363) == 9362) ? false : true)) {
            boolean a = TextAnnotatedStringNodeKt.a(annotatedString2);
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (a) {
                r5.W(145641571);
                boolean z5 = (i9 & 112) == 32;
                ?? K = r5.K();
                TextLinkScope textLinkScope3 = K;
                if (z5 || K == composer$Companion$Empty$1) {
                    TextLinkScope textLinkScope4 = new TextLinkScope(annotatedString2);
                    r5.g0(textLinkScope4);
                    textLinkScope3 = textLinkScope4;
                }
                textLinkScope = textLinkScope3;
                r5.p(false);
            } else {
                r5.W(145707228);
                r5.p(false);
                textLinkScope = null;
            }
            if (TextAnnotatedStringNodeKt.a(annotatedString2)) {
                r5.W(145905443);
                boolean f = ((i9 & 112) == 32) | r5.f(textLinkScope);
                ?? K2 = r5.K();
                Function0 function03 = K2;
                if (f || K2 == composer$Companion$Empty$1) {
                    Function0 function04 = new Function0() { // from class: androidx.compose.foundation.text.a
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            TextLinkScope textLinkScope5 = TextLinkScope.this;
                            if (textLinkScope5 != null) {
                                SnapshotStateList snapshotStateList = textLinkScope5.c;
                                boolean isEmpty = snapshotStateList.isEmpty();
                                AnnotatedString annotatedString3 = textLinkScope5.b;
                                if (!isEmpty) {
                                    TextAnnotatorScope textAnnotatorScope = new TextAnnotatorScope(annotatedString3);
                                    int size = snapshotStateList.size();
                                    for (int i10 = 0; i10 < size; i10++) {
                                        ((Function1) snapshotStateList.get(i10)).b(textAnnotatorScope);
                                    }
                                    annotatedString3 = textAnnotatorScope.b;
                                }
                                textLinkScope5.b = annotatedString3;
                                if (annotatedString3 != null) {
                                    return annotatedString3;
                                }
                            }
                            return annotatedString2;
                        }
                    };
                    r5.g0(function04);
                    function03 = function04;
                }
                function0 = function03;
                r5.p(false);
            } else {
                r5.W(146002721);
                boolean z6 = (i9 & 112) == 32;
                Object K3 = r5.K();
                Object obj3 = K3;
                if (z6 || K3 == composer$Companion$Empty$1) {
                    r1 r1Var = new r1(6, annotatedString2);
                    r5.g0(r1Var);
                    obj3 = r1Var;
                }
                function0 = (Function0) obj3;
                r5.p(false);
            }
            if (z) {
                if (map != null) {
                    Pair pair2 = AnnotatedStringResolveInlineContentKt.a;
                    if (!map.isEmpty()) {
                        int length = annotatedString2.k.length();
                        textLinkScope2 = textLinkScope;
                        List list = annotatedString2.j;
                        if (list != null) {
                            ?? arrayList = new ArrayList(list.size());
                            int size = list.size();
                            int i10 = 0;
                            while (i10 < size) {
                                List list2 = list;
                                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i10);
                                int i11 = size;
                                Object obj4 = range.a;
                                int i12 = i10;
                                int i13 = range.c;
                                Function0 function05 = function0;
                                int i14 = range.b;
                                String str = range.d;
                                if ((obj4 instanceof StringAnnotation) && "androidx.compose.foundation.text.inlineContent".equals(str) && AnnotatedStringKt.b(0, length, i14, i13)) {
                                    Object obj5 = range.a;
                                    obj5.getClass();
                                    arrayList.add(new AnnotatedString.Range(i14, i13, ((StringAnnotation) obj5).a, str));
                                }
                                i10 = i12 + 1;
                                size = i11;
                                list = list2;
                                function0 = function05;
                            }
                            function02 = function0;
                            emptyList = arrayList;
                        } else {
                            function02 = function0;
                            emptyList = EmptyList.j;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        int size2 = emptyList.size();
                        int i15 = 0;
                        EmptyList emptyList2 = emptyList;
                        while (i15 < size2) {
                            AnnotatedString.Range range2 = (AnnotatedString.Range) emptyList2.get(i15);
                            Object obj6 = range2.a;
                            EmptyList emptyList3 = emptyList2;
                            int i16 = range2.c;
                            int i17 = range2.b;
                            InlineTextContent inlineTextContent = (InlineTextContent) map.get(obj6);
                            int i18 = size2;
                            if (inlineTextContent != null) {
                                i8 = i15;
                                arrayList2.add(new AnnotatedString.Range(i17, i16, inlineTextContent.a));
                                arrayList3.add(new AnnotatedString.Range(i17, i16, inlineTextContent.b));
                            } else {
                                i8 = i15;
                            }
                            i15 = i8 + 1;
                            emptyList2 = emptyList3;
                            size2 = i18;
                        }
                        pair = new Pair(arrayList2, arrayList3);
                        i2Var = null;
                    }
                }
                textLinkScope2 = textLinkScope;
                function02 = function0;
                pair = AnnotatedStringResolveInlineContentKt.a;
                i2Var = null;
            } else {
                textLinkScope2 = textLinkScope;
                function02 = function0;
                i2Var = null;
                pair = new Pair(null, null);
            }
            List list3 = (List) pair.j;
            List list4 = (List) pair.k;
            if (z) {
                r5.W(146318828);
                Object K4 = r5.K();
                Object obj7 = K4;
                if (K4 == composer$Companion$Empty$1) {
                    MutableState g = SnapshotStateKt.g(i2Var);
                    r5.g0(g);
                    obj7 = g;
                }
                r5.p(false);
                r8 = (MutableState) obj7;
            } else {
                r5.W(146406588);
                r5.p(false);
                r8 = i2Var;
            }
            if (z) {
                r5.W(146499837);
                boolean f2 = r5.f(r8);
                ?? K5 = r5.K();
                i2 i2Var2 = K5;
                if (f2 || K5 == composer$Companion$Empty$1) {
                    i2 i2Var3 = new i2(r8, 3);
                    r5.g0(i2Var3);
                    i2Var2 = i2Var3;
                }
                i2Var = i2Var2;
                r5.p(false);
            } else {
                r5.W(146571260);
                r5.p(false);
            }
            Function1 function12 = i2Var;
            int i19 = (i9 >> 3) & 14;
            ?? r9 = textLinkScope2;
            BasicText_androidKt.a(annotatedString, textStyle, resolver, list3, z2, r5);
            annotatedString2 = annotatedString;
            AnnotatedString annotatedString3 = (AnnotatedString) function02.a();
            boolean h = r5.h(r9) | ((i9 & 896) == 256);
            Object K6 = r5.K();
            Object obj8 = K6;
            if (h || K6 == composer$Companion$Empty$1) {
                defpackage.c cVar = new defpackage.c(10, (Object) r9);
                r5.g0(cVar);
                obj8 = cVar;
            }
            Modifier e = e(modifier, annotatedString3, textStyle, (Function1) obj8, i, z2, i2, i3, resolver, list3, function12, null, function1);
            if (!z) {
                r5.W(147779703);
                boolean h2 = r5.h(r9);
                Object K7 = r5.K();
                if (h2 || K7 == composer$Companion$Empty$1) {
                    z4 = false;
                    i4 i4Var = new i4(r9, false ? 1 : 0);
                    r5.g0(i4Var);
                    obj2 = i4Var;
                } else {
                    z4 = false;
                    obj2 = K7;
                }
                obj = new LinksTextMeasurePolicy((Function0) obj2);
                r5.p(z4);
            } else {
                r5.W(147956465);
                boolean h3 = r5.h(r9);
                Object K8 = r5.K();
                Object obj9 = K8;
                if (h3 || K8 == composer$Companion$Empty$1) {
                    i4 i4Var2 = new i4(r9, 1);
                    r5.g0(i4Var2);
                    obj9 = i4Var2;
                }
                Function0 function06 = (Function0) obj9;
                boolean f3 = r5.f(r8);
                Object K9 = r5.K();
                Object obj10 = K9;
                if (f3 || K9 == composer$Companion$Empty$1) {
                    o1 o1Var = new o1(r8, 5);
                    r5.g0(o1Var);
                    obj10 = o1Var;
                }
                TextMeasurePolicy textMeasurePolicy = new TextMeasurePolicy(function06, (Function0) obj10);
                r5.p(false);
                obj = textMeasurePolicy;
            }
            int hashCode = Long.hashCode(r5.T);
            PersistentCompositionLocalMap l = r5.l();
            Modifier c = ComposedModifierKt.c(r5, e);
            ComposeUiNode.b.getClass();
            r5.Z();
            if (r5.S) {
                r5.k(LayoutNode.b0);
            } else {
                r5.j0();
            }
            Updater.c(r5, obj, ComposeUiNode.Companion.d);
            Updater.c(r5, l, ComposeUiNode.Companion.c);
            Updater.c(r5, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(r5);
            Updater.c(r5, c, ComposeUiNode.Companion.b);
            if (r9 == 0) {
                r5.W(-433557001);
                z3 = false;
            } else {
                z3 = false;
                r5.W(-291080374);
                r9.a(0, r5);
            }
            r5.p(z3);
            if (list4 == null) {
                r5.W(-433506223);
            } else {
                r5.W(-433506222);
                AnnotatedStringResolveInlineContentKt.a(annotatedString2, list4, r5, i19);
            }
            r5.p(z3);
            r5.p(true);
        } else {
            r5.Q();
        }
        RecomposeScopeImpl r = r5.r();
        if (r != null) {
            r.d = new Function2() { // from class: j4
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj11, Object obj12) {
                    ((Integer) obj12).getClass();
                    int a2 = RecomposeScopeImplKt.a(i4 | 1);
                    int a3 = RecomposeScopeImplKt.a(i5);
                    BasicTextKt.c(Modifier.this, annotatedString2, z, map, textStyle, i, z2, i2, i3, resolver, function1, (Composer) obj11, a2, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final ArrayList d(List list, Function0 function0) {
        TextRangeLayoutMeasureResult textRangeLayoutMeasureResult;
        if (((Boolean) function0.a()).booleanValue()) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Measurable measurable = (Measurable) list.get(i);
                Object a = measurable.a();
                a.getClass();
                n5 n5Var = ((TextRangeLayoutModifier) a).b;
                TextLinkScope textLinkScope = (TextLinkScope) n5Var.k;
                AnnotatedString.Range range = (AnnotatedString.Range) n5Var.l;
                TextLayoutResult textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) textLinkScope.a).getValue();
                if (textLayoutResult == null) {
                    textRangeLayoutMeasureResult = new TextRangeLayoutMeasureResult(0, 0, new vc(28));
                } else {
                    AnnotatedString.Range c = TextLinkScope.c(range, textLayoutResult);
                    if (c == null) {
                        textRangeLayoutMeasureResult = new TextRangeLayoutMeasureResult(0, 0, new vc(29));
                    } else {
                        IntRect a2 = IntRectKt.a(textLayoutResult.h(c.b, c.c).f());
                        textRangeLayoutMeasureResult = new TextRangeLayoutMeasureResult(a2.c - a2.a, a2.a(), new kb(21, a2));
                    }
                }
                int i2 = textRangeLayoutMeasureResult.a;
                int i3 = textRangeLayoutMeasureResult.b;
                arrayList.add(new Pair(measurable.w(Constraints.Companion.b(i2, i2, i3, i3)), textRangeLayoutMeasureResult.c));
            }
            return arrayList;
        }
        return null;
    }

    public static final Modifier e(Modifier modifier, AnnotatedString annotatedString, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, FontFamily.Resolver resolver, List list, Function1 function12, ColorProducer colorProducer, Function1 function13) {
        return modifier.l(Modifier.Companion.b).l(new TextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i, z, i2, i3, list, function12, colorProducer, function13));
    }
}

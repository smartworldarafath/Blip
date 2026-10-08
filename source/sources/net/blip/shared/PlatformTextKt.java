package net.blip.shared;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import defpackage.g4;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function2;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformTextKt {
    public static final void a(final String str, Modifier modifier, final TextStyle textStyle, final VisualTransformation visualTransformation, int i, boolean z, final int i2, final int i3, Composer composer, final int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        final Modifier modifier2;
        final int i10;
        final boolean z3;
        boolean z4;
        boolean z5;
        visualTransformation.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1013058335);
        if (gapComposer.f(str)) {
            i5 = 4;
        } else {
            i5 = 2;
        }
        int i11 = i4 | i5 | 48;
        if (gapComposer.f(textStyle)) {
            i6 = 256;
        } else {
            i6 = 128;
        }
        int i12 = i11 | i6;
        if (gapComposer.f(visualTransformation)) {
            i7 = 2048;
        } else {
            i7 = 1024;
        }
        int i13 = i12 | i7 | 221184;
        if (gapComposer.d(i2)) {
            i8 = 1048576;
        } else {
            i8 = 524288;
        }
        int i14 = i13 | i8;
        if (gapComposer.d(i3)) {
            i9 = 8388608;
        } else {
            i9 = 4194304;
        }
        int i15 = i14 | i9;
        boolean z6 = true;
        if ((4793491 & i15) != 4793490) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i15 & 1, z2)) {
            if ((i15 & 14) == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((i15 & 896) == 256) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z7 = z4 | z5;
            if ((i15 & 7168) != 2048) {
                z6 = false;
            }
            boolean z8 = z7 | z6;
            Object K = gapComposer.K();
            if (z8 || K == Composer.Companion.a) {
                SpanStyle spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                AnnotatedString annotatedString = AnnotatedStringKt.a;
                K = visualTransformation.f(new AnnotatedString(str, CollectionsKt.B(new AnnotatedString.Range(0, str.length(), spanStyle)), EmptyList.j)).a;
                gapComposer.g0(K);
            }
            Modifier.Companion companion = Modifier.Companion.b;
            b((AnnotatedString) K, companion, textStyle, 1, true, i2, i3, null, gapComposer, i15 & 33547248, 776);
            modifier2 = companion;
            i10 = 1;
            z3 = true;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            i10 = i;
            z3 = z;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(str, modifier2, textStyle, visualTransformation, i10, z3, i2, i3, i4) { // from class: qd
                public final /* synthetic */ String j;
                public final /* synthetic */ Modifier k;
                public final /* synthetic */ TextStyle l;
                public final /* synthetic */ VisualTransformation m;
                public final /* synthetic */ int n;
                public final /* synthetic */ boolean o;
                public final /* synthetic */ int p;
                public final /* synthetic */ int q;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a = RecomposeScopeImplKt.a(1);
                    PlatformTextKt.a(this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, a);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, int i, boolean z, int i2, int i3, Map map, Composer composer, int i4, int i5) {
        int i6;
        Modifier modifier2;
        int i7;
        TextStyle textStyle2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean h;
        int i17;
        boolean z2;
        GapComposer gapComposer;
        boolean z3;
        int i18;
        int i19;
        Map map2;
        Modifier modifier3;
        int i20;
        RecomposeScopeImpl r;
        Modifier modifier4;
        int i21;
        boolean z4;
        int i22;
        int i23;
        Map map3;
        Map map4;
        int i24;
        int i25;
        annotatedString.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-378407932);
        if ((i4 & 6) == 0) {
            if (gapComposer2.f(annotatedString)) {
                i25 = 4;
            } else {
                i25 = 2;
            }
            i6 = i25 | i4;
        } else {
            i6 = i4;
        }
        int i26 = i5 & 2;
        if (i26 != 0) {
            i6 |= 48;
        } else if ((i4 & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i6 |= i7;
            if ((i4 & 384) != 0) {
                textStyle2 = textStyle;
                if (gapComposer2.f(textStyle2)) {
                    i24 = 256;
                } else {
                    i24 = 128;
                }
                i6 |= i24;
            } else {
                textStyle2 = textStyle;
            }
            int i27 = i6 | 3072;
            i8 = i5 & 16;
            if (i8 == 0) {
                i27 = i6 | 27648;
            } else if ((i4 & 24576) == 0) {
                if (gapComposer2.d(i)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i27 |= i9;
                i10 = i5 & 32;
                if (i10 != 0) {
                    i27 |= 196608;
                } else if ((196608 & i4) == 0) {
                    if (gapComposer2.g(z)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i27 |= i11;
                    i12 = i5 & 64;
                    if (i12 == 0) {
                        i27 |= 1572864;
                    } else if ((1572864 & i4) == 0) {
                        if (gapComposer2.d(i2)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i27 |= i13;
                        i14 = i5 & 128;
                        if (i14 != 0) {
                            i27 |= 12582912;
                        } else if ((i4 & 12582912) == 0) {
                            if (gapComposer2.d(i3)) {
                                i15 = 8388608;
                            } else {
                                i15 = 4194304;
                            }
                            i27 |= i15;
                        }
                        i16 = i5 & 256;
                        int i28 = 100663296;
                        if (i16 == 0) {
                            if ((i4 & 100663296) == 0) {
                                if ((i4 & 134217728) == 0) {
                                    h = gapComposer2.f(map);
                                } else {
                                    h = gapComposer2.h(map);
                                }
                                if (h) {
                                    i28 = 67108864;
                                } else {
                                    i28 = 33554432;
                                }
                            }
                            i17 = i27 | 805306368;
                            int i29 = 1;
                            if ((i17 & 306783379) == 306783378) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!gapComposer2.N(i17 & 1, z2)) {
                                if (i26 != 0) {
                                    modifier4 = Modifier.Companion.b;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if (i8 != 0) {
                                    i21 = 1;
                                } else {
                                    i21 = i;
                                }
                                if (i10 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i12 != 0) {
                                    i23 = Integer.MAX_VALUE;
                                    i22 = i16;
                                } else {
                                    i22 = i16;
                                    i23 = i2;
                                }
                                if (i14 == 0) {
                                    i29 = i3;
                                }
                                if (i22 != 0) {
                                    map4 = EmptyMap.j;
                                    map3 = map4;
                                } else {
                                    map3 = map;
                                }
                                gapComposer = gapComposer2;
                                BasicTextKt.a(annotatedString, modifier4, DynamicFontTrackingKt.a(textStyle2), i21, z4, i23, i29, map3, gapComposer, i17 & 2147482750);
                                modifier3 = modifier4;
                                i20 = i21;
                                z3 = z4;
                                i18 = i23;
                                i19 = i29;
                                map2 = map3;
                            } else {
                                gapComposer = gapComposer2;
                                gapComposer.Q();
                                z3 = z;
                                i18 = i2;
                                i19 = i3;
                                map2 = map;
                                modifier3 = modifier2;
                                i20 = i;
                            }
                            r = gapComposer.r();
                            if (r == null) {
                                r.d = new g4(annotatedString, modifier3, textStyle, i20, z3, i18, i19, map2, i4, i5, 2);
                                return;
                            }
                            return;
                        }
                        i27 |= i28;
                        i17 = i27 | 805306368;
                        int i292 = 1;
                        if ((i17 & 306783379) == 306783378) {
                        }
                        if (!gapComposer2.N(i17 & 1, z2)) {
                        }
                        r = gapComposer.r();
                        if (r == null) {
                        }
                    }
                    i14 = i5 & 128;
                    if (i14 != 0) {
                    }
                    i16 = i5 & 256;
                    int i282 = 100663296;
                    if (i16 == 0) {
                    }
                    i27 |= i282;
                    i17 = i27 | 805306368;
                    int i2922 = 1;
                    if ((i17 & 306783379) == 306783378) {
                    }
                    if (!gapComposer2.N(i17 & 1, z2)) {
                    }
                    r = gapComposer.r();
                    if (r == null) {
                    }
                }
                i12 = i5 & 64;
                if (i12 == 0) {
                }
                i14 = i5 & 128;
                if (i14 != 0) {
                }
                i16 = i5 & 256;
                int i2822 = 100663296;
                if (i16 == 0) {
                }
                i27 |= i2822;
                i17 = i27 | 805306368;
                int i29222 = 1;
                if ((i17 & 306783379) == 306783378) {
                }
                if (!gapComposer2.N(i17 & 1, z2)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            i10 = i5 & 32;
            if (i10 != 0) {
            }
            i12 = i5 & 64;
            if (i12 == 0) {
            }
            i14 = i5 & 128;
            if (i14 != 0) {
            }
            i16 = i5 & 256;
            int i28222 = 100663296;
            if (i16 == 0) {
            }
            i27 |= i28222;
            i17 = i27 | 805306368;
            int i292222 = 1;
            if ((i17 & 306783379) == 306783378) {
            }
            if (!gapComposer2.N(i17 & 1, z2)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        modifier2 = modifier;
        if ((i4 & 384) != 0) {
        }
        int i272 = i6 | 3072;
        i8 = i5 & 16;
        if (i8 == 0) {
        }
        i10 = i5 & 32;
        if (i10 != 0) {
        }
        i12 = i5 & 64;
        if (i12 == 0) {
        }
        i14 = i5 & 128;
        if (i14 != 0) {
        }
        i16 = i5 & 256;
        int i282222 = 100663296;
        if (i16 == 0) {
        }
        i272 |= i282222;
        i17 = i272 | 805306368;
        int i2922222 = 1;
        if ((i17 & 306783379) == 306783378) {
        }
        if (!gapComposer2.N(i17 & 1, z2)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(String str, Modifier modifier, TextStyle textStyle, int i, boolean z, int i2, int i3, ColorProducer colorProducer, Composer composer, int i4, int i5) {
        int i6;
        Modifier modifier2;
        int i7;
        TextStyle textStyle2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean h;
        boolean z2;
        GapComposer gapComposer;
        boolean z3;
        int i17;
        ColorProducer colorProducer2;
        Modifier modifier3;
        int i18;
        RecomposeScopeImpl r;
        int i19;
        Modifier modifier4;
        int i20;
        int i21;
        int i22;
        int i23;
        ColorProducer colorProducer3;
        int i24;
        int i25;
        str.getClass();
        textStyle.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1904548688);
        if ((i4 & 6) == 0) {
            if (gapComposer2.f(str)) {
                i25 = 4;
            } else {
                i25 = 2;
            }
            i6 = i25 | i4;
        } else {
            i6 = i4;
        }
        int i26 = i5 & 2;
        if (i26 != 0) {
            i6 |= 48;
        } else if ((i4 & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i6 |= i7;
            if ((i4 & 384) != 0) {
                textStyle2 = textStyle;
                if (gapComposer2.f(textStyle2)) {
                    i24 = 256;
                } else {
                    i24 = 128;
                }
                i6 |= i24;
            } else {
                textStyle2 = textStyle;
            }
            int i27 = i6 | 3072;
            i8 = i5 & 16;
            if (i8 == 0) {
                i27 = i6 | 27648;
            } else if ((i4 & 24576) == 0) {
                if (gapComposer2.d(i)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i27 |= i9;
                i10 = 196608 | i27;
                i11 = i5 & 64;
                if (i11 != 0) {
                    i10 = 1769472 | i27;
                } else if ((1572864 & i4) == 0) {
                    i12 = i2;
                    if (gapComposer2.d(i12)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i10 |= i13;
                    i14 = i5 & 128;
                    if (i14 == 0) {
                        i10 |= 12582912;
                    } else if ((12582912 & i4) == 0) {
                        if (gapComposer2.d(i3)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i10 |= i15;
                        i16 = i5 & 256;
                        int i28 = 100663296;
                        if (i16 == 0) {
                            if ((i4 & 100663296) == 0) {
                                if ((i4 & 134217728) == 0) {
                                    h = gapComposer2.f(colorProducer);
                                } else {
                                    h = gapComposer2.h(colorProducer);
                                }
                                if (h) {
                                    i28 = 67108864;
                                } else {
                                    i28 = 33554432;
                                }
                            }
                            if ((i10 & 38347923) == 38347922) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!gapComposer2.N(i10 & 1, z2)) {
                                if (i26 != 0) {
                                    modifier4 = Modifier.Companion.b;
                                    i19 = i11;
                                } else {
                                    i19 = i11;
                                    modifier4 = modifier2;
                                }
                                if (i8 != 0) {
                                    i20 = 1;
                                } else {
                                    i20 = i;
                                }
                                if (i19 != 0) {
                                    i22 = Integer.MAX_VALUE;
                                    i21 = 1;
                                } else {
                                    i21 = 1;
                                    i22 = i12;
                                }
                                if (i14 != 0) {
                                    i23 = i21;
                                } else {
                                    i23 = i3;
                                }
                                if (i16 != 0) {
                                    colorProducer3 = null;
                                } else {
                                    colorProducer3 = colorProducer;
                                }
                                gapComposer = gapComposer2;
                                BasicTextKt.b(str, modifier4, DynamicFontTrackingKt.a(textStyle2), i20, true, i22, i23, colorProducer3, gapComposer, i10 & 268434558, 512);
                                modifier3 = modifier4;
                                i18 = i20;
                                z3 = true;
                                i12 = i22;
                                i17 = i23;
                                colorProducer2 = colorProducer3;
                            } else {
                                gapComposer = gapComposer2;
                                gapComposer.Q();
                                z3 = z;
                                i17 = i3;
                                colorProducer2 = colorProducer;
                                modifier3 = modifier2;
                                i18 = i;
                            }
                            r = gapComposer.r();
                            if (r == null) {
                                r.d = new g4(str, modifier3, textStyle, i18, z3, i12, i17, colorProducer2, i4, i5, 1);
                                return;
                            }
                            return;
                        }
                        i10 |= i28;
                        if ((i10 & 38347923) == 38347922) {
                        }
                        if (!gapComposer2.N(i10 & 1, z2)) {
                        }
                        r = gapComposer.r();
                        if (r == null) {
                        }
                    }
                    i16 = i5 & 256;
                    int i282 = 100663296;
                    if (i16 == 0) {
                    }
                    i10 |= i282;
                    if ((i10 & 38347923) == 38347922) {
                    }
                    if (!gapComposer2.N(i10 & 1, z2)) {
                    }
                    r = gapComposer.r();
                    if (r == null) {
                    }
                }
                i12 = i2;
                i14 = i5 & 128;
                if (i14 == 0) {
                }
                i16 = i5 & 256;
                int i2822 = 100663296;
                if (i16 == 0) {
                }
                i10 |= i2822;
                if ((i10 & 38347923) == 38347922) {
                }
                if (!gapComposer2.N(i10 & 1, z2)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            i10 = 196608 | i27;
            i11 = i5 & 64;
            if (i11 != 0) {
            }
            i12 = i2;
            i14 = i5 & 128;
            if (i14 == 0) {
            }
            i16 = i5 & 256;
            int i28222 = 100663296;
            if (i16 == 0) {
            }
            i10 |= i28222;
            if ((i10 & 38347923) == 38347922) {
            }
            if (!gapComposer2.N(i10 & 1, z2)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        modifier2 = modifier;
        if ((i4 & 384) != 0) {
        }
        int i272 = i6 | 3072;
        i8 = i5 & 16;
        if (i8 == 0) {
        }
        i10 = 196608 | i272;
        i11 = i5 & 64;
        if (i11 != 0) {
        }
        i12 = i2;
        i14 = i5 & 128;
        if (i14 == 0) {
        }
        i16 = i5 & 256;
        int i282222 = 100663296;
        if (i16 == 0) {
        }
        i10 |= i282222;
        if ((i10 & 38347923) == 38347922) {
        }
        if (!gapComposer2.N(i10 & 1, z2)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}

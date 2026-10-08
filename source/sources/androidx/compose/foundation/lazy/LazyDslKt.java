package androidx.compose.foundation.lazy;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import defpackage.ca;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyDslKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(int i, int i2, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Arrangement.Vertical vertical, PaddingValuesImpl paddingValuesImpl, LazyListState lazyListState, Composer composer, Alignment.Horizontal horizontal, Modifier modifier, Function1 function1, boolean z) {
        Modifier modifier2;
        int i3;
        LazyListState lazyListState2;
        PaddingValuesImpl paddingValuesImpl2;
        int i4;
        Arrangement.Vertical vertical2;
        Alignment.Horizontal horizontal2;
        int i5;
        FlingBehavior flingBehavior2;
        int i6;
        boolean z2;
        int i7;
        Function1 function12;
        boolean z3;
        GapComposer gapComposer;
        LazyListState lazyListState3;
        Arrangement.Vertical vertical3;
        Alignment.Horizontal horizontal3;
        FlingBehavior flingBehavior3;
        boolean z4;
        OverscrollEffect overscrollEffect2;
        RecomposeScopeImpl r;
        Alignment.Horizontal horizontal4;
        FlingBehavior flingBehavior4;
        int i8;
        Alignment.Horizontal horizontal5;
        FlingBehavior flingBehavior5;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(53695811);
        if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i3 = i14 | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListState2 = lazyListState;
                if (gapComposer2.f(lazyListState2)) {
                    i13 = 32;
                    i3 |= i13;
                }
            } else {
                lazyListState2 = lazyListState;
            }
            i13 = 16;
            i3 |= i13;
        } else {
            lazyListState2 = lazyListState;
        }
        if ((i & 384) == 0) {
            paddingValuesImpl2 = paddingValuesImpl;
            if (gapComposer2.f(paddingValuesImpl2)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i3 |= i12;
        } else {
            paddingValuesImpl2 = paddingValuesImpl;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            if (gapComposer2.g(false)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                vertical2 = vertical;
                if (gapComposer2.f(vertical2)) {
                    i11 = 16384;
                    i3 |= i11;
                }
            } else {
                vertical2 = vertical;
            }
            i11 = 8192;
            i3 |= i11;
        } else {
            vertical2 = vertical;
        }
        int i15 = i2 & 32;
        if (i15 != 0) {
            i3 |= 196608;
        } else if ((196608 & i) == 0) {
            horizontal2 = horizontal;
            if (gapComposer2.f(horizontal2)) {
                i5 = 131072;
            } else {
                i5 = 65536;
            }
            i3 |= i5;
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (gapComposer2.f(flingBehavior2)) {
                        i10 = 1048576;
                        i3 |= i10;
                    }
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i10 = 524288;
                i3 |= i10;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i6 = i2 & 128;
            if (i6 == 0) {
                i3 |= 12582912;
            } else if ((12582912 & i) == 0) {
                z2 = z;
                if (gapComposer2.g(z2)) {
                    i7 = 8388608;
                } else {
                    i7 = 4194304;
                }
                i3 |= i7;
                if ((100663296 & i) == 0) {
                    i3 |= 33554432;
                }
                if ((805306368 & i) == 0) {
                    function12 = function1;
                    if (gapComposer2.h(function12)) {
                        i9 = 536870912;
                    } else {
                        i9 = 268435456;
                    }
                    i3 |= i9;
                } else {
                    function12 = function1;
                }
                if ((306783379 & i3) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposer2.N(i3 & 1, z3)) {
                    gapComposer2.S();
                    if ((i & 1) != 0 && !gapComposer2.x()) {
                        gapComposer2.Q();
                        if ((i2 & 2) != 0) {
                            i3 &= -113;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                        }
                        i8 = i3 & (-234881025);
                        horizontal5 = horizontal2;
                        flingBehavior5 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    } else {
                        if ((i2 & 2) != 0) {
                            lazyListState2 = LazyListStateKt.a(gapComposer2);
                            i3 &= -113;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            vertical2 = Arrangement.b;
                        }
                        if (i15 != 0) {
                            horizontal4 = Alignment.Companion.m;
                        } else {
                            horizontal4 = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.a(gapComposer2);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i6 != 0) {
                            z2 = true;
                        }
                        overscrollEffect2 = OverscrollKt.b(gapComposer2);
                        i8 = i3 & (-234881025);
                        horizontal5 = horizontal4;
                        flingBehavior5 = flingBehavior4;
                    }
                    LazyListState lazyListState4 = lazyListState2;
                    Arrangement.Vertical vertical4 = vertical2;
                    boolean z5 = z2;
                    gapComposer2.q();
                    int i16 = i8 >> 3;
                    gapComposer = gapComposer2;
                    Function1 function13 = function12;
                    OverscrollEffect overscrollEffect3 = overscrollEffect2;
                    LazyListKt.a((i8 & 14) | 24576 | (i8 & 112) | (i8 & 896) | (i8 & 7168) | (458752 & i16) | (i16 & 3670016) | ((i8 << 12) & 1879048192), ((i8 >> 12) & 14) | ((i8 >> 18) & 7168), overscrollEffect3, flingBehavior5, vertical4, paddingValuesImpl2, lazyListState4, gapComposer, horizontal5, modifier2, function13, z5);
                    flingBehavior3 = flingBehavior5;
                    vertical3 = vertical4;
                    lazyListState3 = lazyListState4;
                    horizontal3 = horizontal5;
                    z4 = z5;
                } else {
                    gapComposer = gapComposer2;
                    gapComposer.Q();
                    lazyListState3 = lazyListState2;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    z4 = z2;
                    overscrollEffect2 = overscrollEffect;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new ca(modifier, lazyListState3, paddingValuesImpl, vertical3, horizontal3, flingBehavior3, z4, overscrollEffect2, function1, i, i2);
                    return;
                }
                return;
            }
            z2 = z;
            if ((100663296 & i) == 0) {
            }
            if ((805306368 & i) == 0) {
            }
            if ((306783379 & i3) != 306783378) {
            }
            if (gapComposer2.N(i3 & 1, z3)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        horizontal2 = horizontal;
        if ((1572864 & i) != 0) {
        }
        i6 = i2 & 128;
        if (i6 == 0) {
        }
        z2 = z;
        if ((100663296 & i) == 0) {
        }
        if ((805306368 & i) == 0) {
        }
        if ((306783379 & i3) != 306783378) {
        }
        if (gapComposer2.N(i3 & 1, z3)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }
}

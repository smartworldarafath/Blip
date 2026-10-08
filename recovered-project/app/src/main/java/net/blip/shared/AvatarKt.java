package net.blip.shared;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import defpackage.b1;
import defpackage.h;
import defpackage.i0;
import defpackage.k8;
import defpackage.n;
import defpackage.u1;
import defpackage.w3;
import defpackage.x3;
import defpackage.z3;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.androidtheme.AndroidAvatarTheme;
import net.blip.libblip.Device;
import net.blip.libblip.DeviceKind;
import net.blip.libblip.Peer;
import net.blip.libblip.User;
import net.blip.libblip.User_DerivedKt;
import net.blip.shared.AvatarTheme;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AvatarKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new n(15));
    public static final h b = new h(18);

    public static final void a(Modifier modifier, AvatarTheme.Appearance appearance, Device device, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        boolean h;
        int i4;
        int i5;
        device.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(255217944);
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
        if ((i & 48) == 0) {
            if ((i & 64) == 0) {
                h = gapComposer.f(appearance);
            } else {
                h = gapComposer.h(appearance);
            }
            if (h) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(device)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            b(modifier, appearance, device.n, gapComposer, i2 & 126, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(modifier, appearance, device, i, 4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
    
        if ((r14 & 2) != 0) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Modifier modifier, AvatarTheme.Appearance appearance, DeviceKind deviceKind, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        boolean h;
        deviceKind.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1489860556);
        int i7 = i2 & 1;
        if (i7 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                if ((i & 64) == 0) {
                    h = gapComposer.f(appearance);
                } else {
                    h = gapComposer.h(appearance);
                }
                if (h) {
                    i6 = 32;
                    i3 |= i6;
                }
            }
            i6 = 16;
            i3 |= i6;
        }
        if ((i & 384) == 0) {
            if (gapComposer.d(deviceKind.ordinal())) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i3 |= i5;
        }
        boolean z2 = false;
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                if (i7 != 0) {
                    modifier = Modifier.Companion.b;
                }
                if ((i2 & 2) != 0) {
                    appearance = ((AndroidAvatarTheme) ((AvatarTheme) gapComposer.j(a))).a(0, gapComposer);
                    i3 &= -113;
                }
                gapComposer.q();
                if ((i3 & 896) == 256) {
                    z2 = true;
                }
                Object K = gapComposer.K();
                if (z2 || K == Composer.Companion.a) {
                    K = new defpackage.c(8, deviceKind);
                    gapComposer.g0(K);
                }
                e(modifier, appearance, (Function1) K, gapComposer, i3 & 126);
            }
        } else {
            gapComposer.Q();
        }
        Modifier modifier2 = modifier;
        AvatarTheme.Appearance appearance2 = appearance;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z3(modifier2, appearance2, deviceKind, i, i2, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(Modifier modifier, AvatarTheme.Appearance appearance, User user, Function1 function1, Composer composer, int i, int i2) {
        int i3;
        int i4;
        Function1 function12;
        int i5;
        boolean z;
        Modifier modifier2;
        AvatarTheme.Appearance appearance2;
        Function1 function13;
        RecomposeScopeImpl r;
        Modifier modifier3;
        AvatarTheme.Appearance appearance3;
        Function1 function14;
        boolean f;
        Object K;
        ArrayList arrayList;
        String str;
        String upperCase;
        int i6;
        int i7;
        boolean h;
        user.getClass();
        String str2 = user.o;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1198033062);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                if ((i & 64) == 0) {
                    h = gapComposer.f(appearance);
                } else {
                    h = gapComposer.h(appearance);
                }
                if (h) {
                    i7 = 32;
                    i3 |= i7;
                }
            }
            i7 = 16;
            i3 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(user)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i3 |= i6;
        }
        int i9 = i2 & 8;
        if (i9 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            function12 = function1;
            if (gapComposer.h(function12)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
            if ((i3 & 1171) == 1170) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i3 & 1, z)) {
                gapComposer.S();
                if ((i & 1) != 0 && !gapComposer.x()) {
                    gapComposer.Q();
                    if ((i2 & 2) != 0) {
                        i3 &= -113;
                    }
                } else {
                    if (i8 != 0) {
                        modifier = Modifier.Companion.b;
                    }
                    if ((i2 & 2) != 0) {
                        appearance = ((AndroidAvatarTheme) ((AvatarTheme) gapComposer.j(a))).c(gapComposer);
                        i3 &= -113;
                    }
                    if (i9 != 0) {
                        modifier3 = modifier;
                        appearance3 = appearance;
                        function14 = b;
                        gapComposer.q();
                        f = gapComposer.f(str2);
                        K = gapComposer.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                        if (!f || K == composer$Companion$Empty$1) {
                            List G = kotlin.text.StringsKt.G(kotlin.text.StringsKt.U(str2).toString(), new String[]{" "}, 6);
                            arrayList = new ArrayList();
                            for (Object obj : G) {
                                if (!kotlin.text.StringsKt.t((String) obj)) {
                                    arrayList.add(obj);
                                }
                            }
                            if (arrayList.isEmpty()) {
                                str = kotlin.text.StringsKt.Q(1, (String) CollectionsKt.s(arrayList));
                            } else {
                                str = "";
                            }
                            if (arrayList.size() > 1) {
                                str = str.concat(kotlin.text.StringsKt.Q(1, (String) CollectionsKt.z(arrayList)));
                            }
                            upperCase = str.toUpperCase(Locale.ROOT);
                            upperCase.getClass();
                            if (kotlin.text.StringsKt.t(upperCase)) {
                                upperCase = null;
                            }
                            K = upperCase;
                            gapComposer.g0(K);
                        }
                        String str3 = (String) K;
                        if (!User_DerivedKt.b(user)) {
                            gapComposer.W(575592076);
                            ByteString byteString = user.q;
                            String encodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(user.p.r());
                            encodeToString.getClass();
                            g(modifier3, appearance3, byteString, encodeToString, function14, gapComposer, (i3 & 126) | ((i3 << 3) & 57344));
                            gapComposer.p(false);
                        } else if (str3 != null) {
                            gapComposer.W(575865031);
                            f(modifier3, appearance3, str3, gapComposer, i3 & 126);
                            gapComposer.p(false);
                        } else {
                            gapComposer.W(575967548);
                            Object K2 = gapComposer.K();
                            if (K2 == composer$Companion$Empty$1) {
                                K2 = new h(19);
                                gapComposer.g0(K2);
                            }
                            e(modifier3, appearance3, (Function1) K2, gapComposer, (i3 & 14) | 384 | (i3 & 112));
                            gapComposer.p(false);
                        }
                        modifier2 = modifier3;
                        appearance2 = appearance3;
                        function13 = function14;
                    }
                }
                appearance3 = appearance;
                function14 = function12;
                modifier3 = modifier;
                gapComposer.q();
                f = gapComposer.f(str2);
                K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                if (!f) {
                }
                List G2 = kotlin.text.StringsKt.G(kotlin.text.StringsKt.U(str2).toString(), new String[]{" "}, 6);
                arrayList = new ArrayList();
                while (r14.hasNext()) {
                }
                if (arrayList.isEmpty()) {
                }
                if (arrayList.size() > 1) {
                }
                upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (kotlin.text.StringsKt.t(upperCase)) {
                }
                K = upperCase;
                gapComposer.g0(K);
                String str32 = (String) K;
                if (!User_DerivedKt.b(user)) {
                }
                modifier2 = modifier3;
                appearance2 = appearance3;
                function13 = function14;
            } else {
                gapComposer.Q();
                modifier2 = modifier;
                appearance2 = appearance;
                function13 = function12;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new u1(modifier2, appearance2, user, function13, i, i2, 2);
                return;
            }
            return;
        }
        function12 = function1;
        if ((i3 & 1171) == 1170) {
        }
        if (!gapComposer.N(i3 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void d(Modifier modifier, AvatarTheme avatarTheme, Peer peer, Function1 function1, Composer composer, int i, int i2) {
        int i3;
        int i4;
        Function1 function12;
        int i5;
        boolean z;
        Modifier modifier2;
        RecomposeScopeImpl r;
        Modifier modifier3;
        Function1 function13;
        int i6;
        int i7;
        boolean h;
        peer.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1492527027);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                if ((i & 64) == 0) {
                    h = gapComposer.f(avatarTheme);
                } else {
                    h = gapComposer.h(avatarTheme);
                }
                if (h) {
                    i7 = 32;
                    i3 |= i7;
                }
            }
            i7 = 16;
            i3 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(peer)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i3 |= i6;
        }
        int i9 = i2 & 8;
        if (i9 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            function12 = function1;
            if (gapComposer.h(function12)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
            if ((i3 & 1171) == 1170) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i3 & 1, z)) {
                gapComposer.S();
                if ((i & 1) != 0 && !gapComposer.x()) {
                    gapComposer.Q();
                    if ((i2 & 2) != 0) {
                        i3 &= -113;
                    }
                } else {
                    if (i8 != 0) {
                        modifier = Modifier.Companion.b;
                    }
                    if ((i2 & 2) != 0) {
                        avatarTheme = (AvatarTheme) gapComposer.j(a);
                        i3 &= -113;
                    }
                    if (i9 != 0) {
                        modifier3 = modifier;
                        function13 = b;
                        gapComposer.q();
                        if (!(peer instanceof Peer.User)) {
                            gapComposer.W(200610876);
                            c(modifier3, ((AndroidAvatarTheme) avatarTheme).c(gapComposer), ((Peer.User) peer).j, function13, gapComposer, i3 & 7182, 0);
                            gapComposer.p(false);
                        } else if (peer instanceof Peer.Device) {
                            gapComposer.W(200615139);
                            a(modifier3, ((AndroidAvatarTheme) avatarTheme).a((i3 >> 3) & 14, gapComposer), ((Peer.Device) peer).j, gapComposer, i3 & 14);
                            gapComposer.p(false);
                        } else {
                            gapComposer.W(200609933);
                            gapComposer.p(false);
                            k8.e();
                            return;
                        }
                        modifier2 = modifier3;
                        function12 = function13;
                    }
                }
                modifier3 = modifier;
                function13 = function12;
                gapComposer.q();
                if (!(peer instanceof Peer.User)) {
                }
                modifier2 = modifier3;
                function12 = function13;
            } else {
                gapComposer.Q();
                modifier2 = modifier;
            }
            AvatarTheme avatarTheme2 = avatarTheme;
            r = gapComposer.r();
            if (r == null) {
                r.d = new u1(modifier2, avatarTheme2, peer, function12, i, i2, 1);
                return;
            }
            return;
        }
        function12 = function1;
        if ((i3 & 1171) == 1170) {
        }
        if (!gapComposer.N(i3 & 1, z)) {
        }
        AvatarTheme avatarTheme22 = avatarTheme;
        r = gapComposer.r();
        if (r == null) {
        }
    }

    public static final void e(Modifier modifier, AvatarTheme.Appearance appearance, Function1 function1, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        boolean h;
        int i4;
        int i5;
        appearance.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(206403168);
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
        if ((i & 48) == 0) {
            if ((i & 64) == 0) {
                h = gapComposer.f(appearance);
            } else {
                h = gapComposer.h(appearance);
            }
            if (h) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function1)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        int i6 = 1;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            BoxWithConstraintsKt.a(SizeKt.c(AspectRatioKt.a(BackgroundKt.b(ClipKt.a(modifier, appearance.a), appearance.b, RectangleShapeKt.a)), 1.0f), Alignment.Companion.e, ComposableLambdaKt.b(-1933320374, new i0(i6, function1, appearance), gapComposer), gapComposer, 3120, 4);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(modifier, appearance, function1, i, 3);
        }
    }

    public static final void f(Modifier modifier, AvatarTheme.Appearance appearance, String str, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        boolean h;
        int i4;
        int i5;
        appearance.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(160220388);
        int i6 = 2;
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
        if ((i & 48) == 0) {
            if ((i & 64) == 0) {
                h = gapComposer.f(appearance);
            } else {
                h = gapComposer.h(appearance);
            }
            if (h) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.f(str)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            BoxWithConstraintsKt.a(SizeKt.c(AspectRatioKt.a(BackgroundKt.b(ClipKt.a(modifier, appearance.a), appearance.b, RectangleShapeKt.a)), 1.0f), Alignment.Companion.e, ComposableLambdaKt.b(-2047856838, new i0(i6, appearance, str), gapComposer), gapComposer, 3120, 4);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(modifier, appearance, str, i, 5);
        }
    }

    public static final void g(Modifier modifier, AvatarTheme.Appearance appearance, ByteString byteString, String str, Function1 function1, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        boolean h;
        int i6;
        int i7;
        appearance.getClass();
        byteString.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1438218404);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i2 = i7 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if ((i & 64) == 0) {
                h = gapComposer.f(appearance);
            } else {
                h = gapComposer.h(appearance);
            }
            if (h) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i2 |= i6;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(byteString)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i2 |= i5;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(str)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i2 |= i4;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(function1)) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i2 |= i3;
        }
        if ((i2 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            BoxWithConstraintsKt.a(SizeKt.c(AspectRatioKt.a(ClipKt.a(modifier, appearance.a)), 1.0f), Alignment.Companion.e, ComposableLambdaKt.b(20496634, new w3(byteString, str, function1), gapComposer), gapComposer, 3120, 4);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x3(modifier, appearance, byteString, str, function1, i, 0);
        }
    }
}

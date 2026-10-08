package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.h;
import defpackage.j6;
import defpackage.n;
import defpackage.u;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionLocalsKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new n(21));
    public static final StaticProvidableCompositionLocal b = new CompositionLocal(new n(21));
    public static final StaticProvidableCompositionLocal c = new CompositionLocal(new n(26));
    public static final StaticProvidableCompositionLocal d = new CompositionLocal(new n(27));
    public static final StaticProvidableCompositionLocal e = new CompositionLocal(new n(28));
    public static final StaticProvidableCompositionLocal f = new CompositionLocal(new n(29));
    public static final StaticProvidableCompositionLocal g = new CompositionLocal(new j6(0));
    public static final StaticProvidableCompositionLocal h = new CompositionLocal(new j6(1));
    public static final StaticProvidableCompositionLocal i = new CompositionLocal(new j6(3));
    public static final StaticProvidableCompositionLocal j = new CompositionLocal(new j6(4));
    public static final StaticProvidableCompositionLocal k = new CompositionLocal(new j6(2));
    public static final StaticProvidableCompositionLocal l = new CompositionLocal(new j6(5));
    public static final StaticProvidableCompositionLocal m = new CompositionLocal(new j6(6));
    public static final StaticProvidableCompositionLocal n = new CompositionLocal(new j6(7));
    public static final StaticProvidableCompositionLocal o = new CompositionLocal(new j6(8));
    public static final StaticProvidableCompositionLocal p;
    public static final StaticProvidableCompositionLocal q;
    public static final StaticProvidableCompositionLocal r;
    public static final StaticProvidableCompositionLocal s;
    public static final StaticProvidableCompositionLocal t;
    public static final StaticProvidableCompositionLocal u;
    public static final StaticProvidableCompositionLocal v;
    public static final StaticProvidableCompositionLocal w;
    public static final DynamicProvidableCompositionLocal x;
    public static final StaticProvidableCompositionLocal y;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v15, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v17, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v19, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v21, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v23, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v25, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v27, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v29, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v33, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v35, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v37, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v39, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v41, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v43, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v45, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v47, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v51, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.compose.runtime.StaticProvidableCompositionLocal, androidx.compose.runtime.CompositionLocal] */
    static {
        new ComputedProvidableCompositionLocal(new h(29));
        p = new CompositionLocal(new n(21));
        q = new CompositionLocal(new n(21));
        r = new CompositionLocal(new j6(9));
        s = new CompositionLocal(new j6(10));
        t = new CompositionLocal(new j6(11));
        u = new CompositionLocal(new n(22));
        v = new CompositionLocal(new n(23));
        w = new CompositionLocal(new n(21));
        x = new DynamicProvidableCompositionLocal(new n(24));
        y = new CompositionLocal(new n(25));
    }

    public static final void a(final Owner owner, UriHandler uriHandler, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1925803616);
        if (gapComposer.f(owner)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i6 = i2 | i3;
        if (gapComposer.f(uriHandler)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i7 = i6 | i4;
        if (gapComposer.h(composableLambdaImpl)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i8 = i7 | i5;
        if ((i8 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i8 & 1, z)) {
            ProvidedValue b2 = a.b(owner.getAccessibilityManager());
            ProvidedValue b3 = b.b(owner.getAutofill());
            ProvidedValue b4 = d.b(owner.getAutofillManager());
            ProvidedValue b5 = c.b(owner.getAutofillTree());
            ProvidedValue b6 = e.b(owner.getClipboardManager());
            ProvidedValue b7 = f.b(owner.getClipboard());
            ProvidedValue b8 = h.b(owner.getDensity());
            ProvidedValue b9 = i.b(owner.getFocusOwner());
            ProvidedValue b10 = j.b(owner.getFontLoader());
            b10.g = false;
            ProvidedValue b11 = k.b(owner.getFontFamilyResolver());
            b11.g = false;
            ProvidedValue b12 = l.b(owner.getHapticFeedBack());
            int i9 = i8 & 14;
            if (i9 != 4) {
                z2 = false;
            } else {
                z2 = true;
            }
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z2 || K == composer$Companion$Empty$1) {
                final int i10 = 0;
                K = new Function1() { // from class: k6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int i11 = i10;
                        Owner owner2 = owner;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.a;
                        switch (i11) {
                            case 0:
                                return owner2.getInputModeManager();
                            case 1:
                                return owner2.getTextInputService();
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                return owner2.getSoftwareKeyboardController();
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                return owner2.getTextToolbar();
                            default:
                                return owner2.getPointerIconService();
                        }
                    }
                };
                gapComposer.g0(K);
            }
            ProvidedValue c2 = m.c((Function1) K);
            ProvidedValue b13 = n.b(owner.getLayoutDirection());
            if (i9 != 4) {
                z3 = false;
            } else {
                z3 = true;
            }
            Object K2 = gapComposer.K();
            if (z3 || K2 == composer$Companion$Empty$1) {
                final int i11 = 1;
                K2 = new Function1() { // from class: k6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int i112 = i11;
                        Owner owner2 = owner;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.a;
                        switch (i112) {
                            case 0:
                                return owner2.getInputModeManager();
                            case 1:
                                return owner2.getTextInputService();
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                return owner2.getSoftwareKeyboardController();
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                return owner2.getTextToolbar();
                            default:
                                return owner2.getPointerIconService();
                        }
                    }
                };
                gapComposer.g0(K2);
            }
            ProvidedValue c3 = p.c((Function1) K2);
            if (i9 != 4) {
                z4 = false;
            } else {
                z4 = true;
            }
            Object K3 = gapComposer.K();
            if (z4 || K3 == composer$Companion$Empty$1) {
                final int i12 = 2;
                K3 = new Function1() { // from class: k6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int i112 = i12;
                        Owner owner2 = owner;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.a;
                        switch (i112) {
                            case 0:
                                return owner2.getInputModeManager();
                            case 1:
                                return owner2.getTextInputService();
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                return owner2.getSoftwareKeyboardController();
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                return owner2.getTextToolbar();
                            default:
                                return owner2.getPointerIconService();
                        }
                    }
                };
                gapComposer.g0(K3);
            }
            ProvidedValue c4 = q.c((Function1) K3);
            if (i9 != 4) {
                z5 = false;
            } else {
                z5 = true;
            }
            Object K4 = gapComposer.K();
            boolean z7 = z5;
            final int i13 = 3;
            if (z7 || K4 == composer$Companion$Empty$1) {
                K4 = new Function1() { // from class: k6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int i112 = i13;
                        Owner owner2 = owner;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.a;
                        switch (i112) {
                            case 0:
                                return owner2.getInputModeManager();
                            case 1:
                                return owner2.getTextInputService();
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                return owner2.getSoftwareKeyboardController();
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                return owner2.getTextToolbar();
                            default:
                                return owner2.getPointerIconService();
                        }
                    }
                };
                gapComposer.g0(K4);
            }
            ProvidedValue c5 = r.c((Function1) K4);
            ProvidedValue b14 = s.b(uriHandler);
            ProvidedValue b15 = t.b(owner.getViewConfiguration());
            ProvidedValue b16 = u.b(owner.getWindowInfo());
            final int i14 = 4;
            if (i9 != 4) {
                z6 = false;
            } else {
                z6 = true;
            }
            Object K5 = gapComposer.K();
            if (z6 || K5 == composer$Companion$Empty$1) {
                K5 = new Function1() { // from class: k6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int i112 = i14;
                        Owner owner2 = owner;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.a;
                        switch (i112) {
                            case 0:
                                return owner2.getInputModeManager();
                            case 1:
                                return owner2.getTextInputService();
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                return owner2.getSoftwareKeyboardController();
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                return owner2.getTextToolbar();
                            default:
                                return owner2.getPointerIconService();
                        }
                    }
                };
                gapComposer.g0(K5);
            }
            CompositionLocalKt.b(new ProvidedValue[]{b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, c2, b13, c3, c4, c5, b14, b15, b16, w.c((Function1) K5), g.b(owner.getGraphicsContext()), LocalRetainedValuesStoreKt.a.b(owner.getRetainedValuesStore()), o.b(owner.getLocaleList())}, composableLambdaImpl, gapComposer, ((i8 >> 3) & 112) | 8);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r2 = gapComposer.r();
        if (r2 != null) {
            r2.d = new u(owner, uriHandler, composableLambdaImpl, i2, 6);
        }
    }

    public static final void b(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}

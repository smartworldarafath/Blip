package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.MenuDefaults;
import androidx.compose.material.TextFieldColors;
import androidx.compose.material.TextFieldDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.shortcuts.PinPeerShortcutMenuItemKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DividerKt;
import net.blip.android.ui.home.ComposableSingletons$PeerTrayKt;
import net.blip.libblip.Peer;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class od implements Function3 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ od(TextFieldValue textFieldValue, boolean z, boolean z2, VisualTransformation visualTransformation, MutableInteractionSource mutableInteractionSource, Shape shape, TextFieldColors textFieldColors) {
        this.m = textFieldValue;
        this.k = z;
        this.l = z2;
        this.n = visualTransformation;
        this.o = mutableInteractionSource;
        this.p = shape;
        this.q = textFieldColors;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        int i;
        int i2 = this.j;
        Unit unit = Unit.a;
        Object obj4 = this.q;
        Object obj5 = this.p;
        Object obj6 = this.o;
        Object obj7 = this.n;
        Object obj8 = this.m;
        switch (i2) {
            case 0:
                Peer peer = (Peer) obj8;
                Function1 function1 = (Function1) obj7;
                final MutableState mutableState = (MutableState) obj6;
                final MutableState mutableState2 = (MutableState) obj5;
                final MutableState mutableState3 = (MutableState) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 8.0f));
                    PlatformTextKt.c(peer.b(), PaddingKt.c(companion, MenuDefaults.a), TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).f, TextUnitKt.d(12), FontWeight.r, 0L, TextUnitKt.d(12), null, 0, 16646136), 0, false, 0, 0, null, gapComposer, 0, 504);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 16.0f));
                    DividerKt.a(null, gapComposer, 0, 1);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 4.0f));
                    boolean f = gapComposer.f(function1);
                    Object K = gapComposer.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (f || K == composer$Companion$Empty$1) {
                        K = new k9(7, mutableState, function1);
                        gapComposer.g0(K);
                    }
                    AndroidMenu_androidKt.b((Function0) K, null, this.k, null, ComposableSingletons$PeerTrayKt.b, gapComposer, 196608, 26);
                    boolean f2 = gapComposer.f(function1);
                    Object K2 = gapComposer.K();
                    if (f2 || K2 == composer$Companion$Empty$1) {
                        K2 = new k9(8, mutableState, function1);
                        gapComposer.g0(K2);
                    }
                    AndroidMenu_androidKt.b((Function0) K2, null, false, null, ComposableSingletons$PeerTrayKt.c, gapComposer, 196608, 30);
                    boolean f3 = gapComposer.f(function1);
                    Object K3 = gapComposer.K();
                    if (f3 || K3 == composer$Companion$Empty$1) {
                        K3 = new k9(9, mutableState, function1);
                        gapComposer.g0(K3);
                    }
                    AndroidMenu_androidKt.b((Function0) K3, null, false, null, ComposableSingletons$PeerTrayKt.d, gapComposer, 196608, 30);
                    boolean f4 = gapComposer.f(function1);
                    Object K4 = gapComposer.K();
                    if (f4 || K4 == composer$Companion$Empty$1) {
                        K4 = new k9(10, mutableState, function1);
                        gapComposer.g0(K4);
                    }
                    AndroidMenu_androidKt.b((Function0) K4, null, false, null, ComposableSingletons$PeerTrayKt.e, gapComposer, 196608, 30);
                    if (this.l) {
                        gapComposer.W(-1579457168);
                        boolean f5 = gapComposer.f(function1);
                        Object K5 = gapComposer.K();
                        if (f5 || K5 == composer$Companion$Empty$1) {
                            K5 = new k9(11, mutableState, function1);
                            gapComposer.g0(K5);
                        }
                        AndroidMenu_androidKt.b((Function0) K5, null, false, null, ComposableSingletons$PeerTrayKt.f, gapComposer, 196608, 30);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1579217879);
                        gapComposer.p(false);
                    }
                    boolean f6 = gapComposer.f(function1);
                    Object K6 = gapComposer.K();
                    if (f6 || K6 == composer$Companion$Empty$1) {
                        K6 = new k9(12, mutableState, function1);
                        gapComposer.g0(K6);
                    }
                    AndroidMenu_androidKt.b((Function0) K6, null, false, null, ComposableSingletons$PeerTrayKt.g, gapComposer, 196608, 30);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 6.0f));
                    DividerKt.a(null, gapComposer, 0, 1);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 6.0f));
                    Object K7 = gapComposer.K();
                    if (K7 == composer$Companion$Empty$1) {
                        K7 = new cd(mutableState, 5);
                        gapComposer.g0(K7);
                    }
                    PinPeerShortcutMenuItemKt.a(peer, (Function0) K7, gapComposer, 48);
                    Object K8 = gapComposer.K();
                    if (K8 == composer$Companion$Empty$1) {
                        final int i3 = 0;
                        K8 = new Function0() { // from class: ld
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i4 = i3;
                                Unit unit2 = Unit.a;
                                MutableState mutableState4 = mutableState2;
                                MutableState mutableState5 = mutableState;
                                switch (i4) {
                                    case 0:
                                        mutableState5.setValue(Boolean.FALSE);
                                        mutableState4.setValue(Boolean.TRUE);
                                        return unit2;
                                    default:
                                        mutableState5.setValue(Boolean.FALSE);
                                        mutableState4.setValue(Boolean.TRUE);
                                        return unit2;
                                }
                            }
                        };
                        gapComposer.g0(K8);
                    }
                    AndroidMenu_androidKt.b((Function0) K8, null, false, null, ComposableSingletons$PeerTrayKt.h, gapComposer, 196614, 30);
                    if (peer instanceof Peer.User) {
                        gapComposer.W(-1578555254);
                        Object K9 = gapComposer.K();
                        if (K9 == composer$Companion$Empty$1) {
                            final int i4 = 1;
                            K9 = new Function0() { // from class: ld
                                @Override // kotlin.jvm.functions.Function0
                                public final Object a() {
                                    int i42 = i4;
                                    Unit unit2 = Unit.a;
                                    MutableState mutableState4 = mutableState3;
                                    MutableState mutableState5 = mutableState;
                                    switch (i42) {
                                        case 0:
                                            mutableState5.setValue(Boolean.FALSE);
                                            mutableState4.setValue(Boolean.TRUE);
                                            return unit2;
                                        default:
                                            mutableState5.setValue(Boolean.FALSE);
                                            mutableState4.setValue(Boolean.TRUE);
                                            return unit2;
                                    }
                                }
                            };
                            gapComposer.g0(K9);
                        }
                        AndroidMenu_androidKt.b((Function0) K9, null, false, null, ComposableSingletons$PeerTrayKt.i, gapComposer, 196614, 30);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1578340951);
                        gapComposer.p(false);
                    }
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                TextFieldValue textFieldValue = (TextFieldValue) obj8;
                VisualTransformation visualTransformation = (VisualTransformation) obj7;
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) obj6;
                Shape shape = (Shape) obj5;
                TextFieldColors textFieldColors = (TextFieldColors) obj4;
                Function2 function2 = (Function2) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    if (((GapComposer) composer2).h(function2)) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    intValue2 |= i;
                }
                if ((intValue2 & 19) != 18) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    TextFieldDefaults.a.a(textFieldValue.a.k, function2, this.k, this.l, visualTransformation, mutableInteractionSource, null, null, null, shape, textFieldColors, null, gapComposer2, (intValue2 << 3) & 112);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ od(Peer peer, Function1 function1, boolean z, boolean z2, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        this.m = peer;
        this.n = function1;
        this.k = z;
        this.l = z2;
        this.o = mutableState;
        this.p = mutableState2;
        this.q = mutableState3;
    }
}

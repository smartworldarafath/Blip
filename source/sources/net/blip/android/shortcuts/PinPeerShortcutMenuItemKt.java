package net.blip.android.shortcuts;

import android.content.pm.ShortcutManager;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.MainActivity;
import net.blip.android.shortcuts.PinPeerShortcutMenuItemKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PinPeerShortcutMenuItemKt {
    public static final void a(final Peer peer, final Function0 function0, Composer composer, final int i) {
        int i2;
        boolean z;
        RecomposeScopeImpl r;
        Function2 function2;
        final MainActivity mainActivity;
        int i3;
        int i4;
        peer.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(418582372);
        final int i5 = 2;
        if ((i & 6) == 0) {
            if (gapComposer.h(peer)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function0)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        final int i6 = 0;
        final int i7 = 1;
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Object j = gapComposer.j(LocalActivityKt.a);
            if (j instanceof MainActivity) {
                mainActivity = (MainActivity) j;
            } else {
                mainActivity = null;
            }
            if (mainActivity == null) {
                r = gapComposer.r();
                if (r != null) {
                    function2 = new Function2() { // from class: pd
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i8 = i6;
                            Unit unit = Unit.a;
                            int i9 = i;
                            Function0 function02 = function0;
                            Peer peer2 = peer;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).intValue();
                            switch (i8) {
                                case 0:
                                    PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                    return unit;
                                case 1:
                                    PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                    return unit;
                                default:
                                    PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                    return unit;
                            }
                        }
                    };
                } else {
                    return;
                }
            } else {
                boolean f = gapComposer.f(mainActivity);
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                Object obj = K;
                if (f || K == composer$Companion$Empty$1) {
                    Boolean valueOf = Boolean.valueOf(((ShortcutManager) mainActivity.getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported());
                    gapComposer.g0(valueOf);
                    obj = valueOf;
                }
                if (!((Boolean) obj).booleanValue()) {
                    r = gapComposer.r();
                    if (r != null) {
                        function2 = new Function2() { // from class: pd
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj2, Object obj22) {
                                int i8 = i7;
                                Unit unit = Unit.a;
                                int i9 = i;
                                Function0 function02 = function0;
                                Peer peer2 = peer;
                                Composer composer2 = (Composer) obj2;
                                ((Integer) obj22).intValue();
                                switch (i8) {
                                    case 0:
                                        PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                        return unit;
                                    case 1:
                                        PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                        return unit;
                                    default:
                                        PinPeerShortcutMenuItemKt.a(peer2, function02, composer2, RecomposeScopeImplKt.a(i9 | 1));
                                        return unit;
                                }
                            }
                        };
                    } else {
                        return;
                    }
                } else {
                    Object K2 = gapComposer.K();
                    Object obj2 = K2;
                    if (K2 == composer$Companion$Empty$1) {
                        CoroutineScope h = EffectsKt.h(gapComposer);
                        gapComposer.g0(h);
                        obj2 = h;
                    }
                    final CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    if ((i2 & 112) == 32) {
                        i6 = 1;
                    }
                    int i8 = (gapComposer.h(coroutineScope) ? 1 : 0) | i6 | (gapComposer.h(mainActivity) ? 1 : 0) | (gapComposer.h(peer) ? 1 : 0);
                    Object K3 = gapComposer.K();
                    Object obj3 = K3;
                    if (i8 != 0 || K3 == composer$Companion$Empty$1) {
                        Function0 function02 = new Function0() { // from class: net.blip.android.shortcuts.a
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                Function0.this.a();
                                BuildersKt.c(coroutineScope, null, null, new PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1(mainActivity, peer, null), 3);
                                return Unit.a;
                            }
                        };
                        gapComposer.g0(function02);
                        obj3 = function02;
                    }
                    AndroidMenu_androidKt.b((Function0) obj3, null, false, null, ComposableSingletons$PinPeerShortcutMenuItemKt.a, gapComposer, 196608, 30);
                }
            }
            r.d = function2;
        }
        gapComposer.Q();
        r = gapComposer.r();
        if (r != null) {
            function2 = new Function2() { // from class: pd
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj22, Object obj222) {
                    int i82 = i5;
                    Unit unit = Unit.a;
                    int i9 = i;
                    Function0 function022 = function0;
                    Peer peer2 = peer;
                    Composer composer2 = (Composer) obj22;
                    ((Integer) obj222).intValue();
                    switch (i82) {
                        case 0:
                            PinPeerShortcutMenuItemKt.a(peer2, function022, composer2, RecomposeScopeImplKt.a(i9 | 1));
                            return unit;
                        case 1:
                            PinPeerShortcutMenuItemKt.a(peer2, function022, composer2, RecomposeScopeImplKt.a(i9 | 1));
                            return unit;
                        default:
                            PinPeerShortcutMenuItemKt.a(peer2, function022, composer2, RecomposeScopeImplKt.a(i9 | 1));
                            return unit;
                    }
                }
            };
            r.d = function2;
        }
    }
}

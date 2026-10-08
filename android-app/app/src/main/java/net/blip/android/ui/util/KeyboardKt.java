package net.blip.android.ui.util;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.WindowInfo;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyboardKt {
    public static final Modifier a(Composer composer, Modifier modifier) {
        modifier.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        if (((LazyWindowInfo) ((WindowInfo) gapComposer.j(CompositionLocalsKt.u))).a()) {
            gapComposer.W(-1051088943);
            gapComposer.W(781413768);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K2);
            }
            MutableState mutableState2 = (MutableState) K2;
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer.W(-966207711);
                View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
                Boolean valueOf = Boolean.valueOf(b(view));
                boolean h = gapComposer.h(view);
                Object K3 = gapComposer.K();
                if (h || K3 == composer$Companion$Empty$1) {
                    K3 = new KeyboardKt$rememberIsKeyboardOpen$1$1(view, null);
                    gapComposer.g0(K3);
                }
                MutableState i = SnapshotStateKt.i(gapComposer, valueOf, (Function2) K3);
                FocusManager focusManager = (FocusManager) gapComposer.j(CompositionLocalsKt.i);
                Boolean bool = (Boolean) i.getValue();
                bool.booleanValue();
                boolean f = gapComposer.f(i) | gapComposer.h(focusManager);
                Object K4 = gapComposer.K();
                if (f || K4 == composer$Companion$Empty$1) {
                    K4 = new KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1(focusManager, i, mutableState2, null);
                    gapComposer.g0(K4);
                }
                EffectsKt.e(gapComposer, bool, (Function2) K4);
                gapComposer.p(false);
            } else {
                gapComposer.W(-965850219);
                gapComposer.p(false);
            }
            Object K5 = gapComposer.K();
            if (K5 == composer$Companion$Empty$1) {
                K5 = new defpackage.b(20, mutableState, mutableState2);
                gapComposer.g0(K5);
            }
            modifier = FocusEventModifierKt.a(modifier, (Function1) K5);
            gapComposer.p(false);
        } else {
            gapComposer.W(-1051088530);
        }
        gapComposer.p(false);
        return modifier;
    }

    public static final boolean b(View view) {
        view.getClass();
        view.getWindowVisibleDisplayFrame(new Rect());
        if (r6 - r0.bottom > view.getRootView().getHeight() * 0.15d) {
            return true;
        }
        return false;
    }
}

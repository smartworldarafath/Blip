package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ClickableKt {
    public static Modifier a(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, boolean z, Role role, final Function0 function0, int i) {
        Modifier a;
        if ((i & 4) != 0) {
            z = true;
        }
        final boolean z2 = z;
        if ((i & 16) != 0) {
            role = null;
        }
        final Role role2 = role;
        if (indication != null) {
            a = new ClickableElement(mutableInteractionSource, (IndicationNodeFactory) indication, false, z2, null, role2, function0);
        } else if (indication == null) {
            a = new ClickableElement(mutableInteractionSource, null, false, z2, null, role2, function0);
        } else {
            Modifier.Companion companion = Modifier.Companion.b;
            if (mutableInteractionSource != null) {
                a = IndicationKt.a(companion, mutableInteractionSource, indication).l(new ClickableElement(mutableInteractionSource, null, false, z2, null, role2, function0));
            } else {
                a = ComposedModifierKt.a(companion, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj, Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                        gapComposer.W(-1525724089);
                        Object K = gapComposer.K();
                        if (K == Composer.Companion.a) {
                            K = InteractionSourceKt.a();
                            gapComposer.g0(K);
                        }
                        MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) K;
                        Modifier l = IndicationKt.a(Modifier.Companion.b, mutableInteractionSource2, Indication.this).l(new ClickableElement(mutableInteractionSource2, null, false, z2, null, role2, function0));
                        gapComposer.p(false);
                        return l;
                    }
                });
            }
        }
        return modifier.l(a);
    }

    public static Modifier b(Modifier modifier, boolean z, String str, Role role, Function0 function0, int i) {
        String str2;
        Role role2;
        if ((i & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 2) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i & 4) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        return modifier.l(new ClickableElement(null, null, true, z2, str2, role2, function0));
    }

    public static Modifier c(Modifier modifier, MutableInteractionSource mutableInteractionSource, final Indication indication, boolean z, Function0 function0, final Function0 function02, int i) {
        Modifier a;
        if ((i & 4) != 0) {
            z = true;
        }
        final boolean z2 = z;
        if ((i & 64) != 0) {
            function0 = null;
        }
        final Function0 function03 = function0;
        if (indication != null) {
            a = new CombinedClickableElement((IndicationNodeFactory) indication, mutableInteractionSource, function02, function03, z2);
        } else if (indication == null) {
            a = new CombinedClickableElement(null, mutableInteractionSource, function02, function03, z2);
        } else {
            Modifier.Companion companion = Modifier.Companion.b;
            if (mutableInteractionSource != null) {
                a = IndicationKt.a(companion, mutableInteractionSource, indication).l(new CombinedClickableElement(null, mutableInteractionSource, function02, function03, z2));
            } else {
                a = ComposedModifierKt.a(companion, new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj, Object obj2, Object obj3) {
                        ((Number) obj3).intValue();
                        GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                        gapComposer.W(-1525724089);
                        Object K = gapComposer.K();
                        if (K == Composer.Companion.a) {
                            K = InteractionSourceKt.a();
                            gapComposer.g0(K);
                        }
                        MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) K;
                        Modifier l = IndicationKt.a(Modifier.Companion.b, mutableInteractionSource2, Indication.this).l(new CombinedClickableElement(null, mutableInteractionSource2, function02, function03, z2));
                        gapComposer.p(false);
                        return l;
                    }
                });
            }
        }
        return modifier.l(a);
    }

    public static final boolean d(KeyEvent keyEvent) {
        long a = KeyEvent_androidKt.a(keyEvent);
        int i = Key.O;
        if (!Key.a(a, Key.h) && !Key.a(a, Key.r) && !Key.a(a, Key.E) && !Key.a(a, Key.q)) {
            return false;
        }
        return true;
    }
}

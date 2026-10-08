package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.h;
import defpackage.k0;
import defpackage.q;
import defpackage.q2;
import defpackage.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidView_androidKt {
    public static final h a = new h(13);

    public static final void a(int i, Composer composer, Modifier modifier, final Function1 function1) {
        int i2;
        boolean z;
        boolean z2;
        Object obj;
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        Density density;
        LayoutDirection layoutDirection;
        LifecycleOwner lifecycleOwner;
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-180024211);
        if ((i & 6) == 0) {
            if (gapComposer.h(function1)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i2 = i6 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i2 |= i5;
        }
        int i7 = i2 | 384;
        int i8 = i & 3072;
        h hVar = a;
        if (i8 == 0) {
            if (gapComposer.h(hVar)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i7 |= i4;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(hVar)) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i7 |= i3;
        }
        if ((i7 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            int hashCode = Long.hashCode(gapComposer.T);
            Modifier c = ComposedModifierKt.c(gapComposer, modifier.l(FocusGroupPropertiesElement.b).l(FocusTargetNode.FocusTargetElement.b).l(FocusTargetPropertiesElement.b).l(FocusTargetInteropElement.b));
            Density density2 = (Density) gapComposer.j(CompositionLocalsKt.h);
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
            PersistentCompositionLocalMap l = gapComposer.l();
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) gapComposer.j(LocalLifecycleOwnerKt.a);
            SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) gapComposer.j(LocalSavedStateRegistryOwnerKt.a);
            gapComposer.W(1314774735);
            int i9 = i7 & 14;
            final int hashCode2 = Long.hashCode(gapComposer.T);
            final Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            final GapComposer.CompositionContextImpl b = ComposablesKt.b(gapComposer);
            final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.j(SaveableStateRegistryKt.a);
            final View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
            boolean h = gapComposer.h(context);
            if ((((i9 & 14) ^ 6) > 4 && gapComposer.f(function1)) || (i9 & 6) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean h2 = h | z2 | gapComposer.h(b) | gapComposer.h(saveableStateRegistry) | gapComposer.d(hashCode2) | gapComposer.h(view);
            Object K = gapComposer.K();
            if (!h2 && K != Composer.Companion.a) {
                modifier2 = c;
                lifecycleOwner = lifecycleOwner2;
                obj = K;
                density = density2;
                layoutDirection = layoutDirection2;
                persistentCompositionLocalMap = l;
            } else {
                persistentCompositionLocalMap = l;
                density = density2;
                layoutDirection = layoutDirection2;
                lifecycleOwner = lifecycleOwner2;
                modifier2 = c;
                obj = new Function0() { // from class: r2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        KeyEvent.Callback callback = view;
                        callback.getClass();
                        return new ViewFactoryHolder(context, function1, b, saveableStateRegistry, hashCode2, (Owner) callback).getLayoutNode();
                    }
                };
                gapComposer.g0(obj);
            }
            Function0 function0 = (Function0) obj;
            gapComposer.R(125, 1, null, null);
            gapComposer.r = true;
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = persistentCompositionLocalMap;
            if (gapComposer.S) {
                gapComposer.k(function0);
            } else {
                gapComposer.j0();
            }
            ComposeUiNode.b.getClass();
            Updater.c(gapComposer, persistentCompositionLocalMap2, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, modifier2, new k0(4));
            Updater.c(gapComposer, density, new k0(5));
            Updater.c(gapComposer, lifecycleOwner, new k0(6));
            Updater.c(gapComposer, savedStateRegistryOwner, new k0(7));
            Updater.c(gapComposer, layoutDirection, new k0(1));
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.c(gapComposer, hVar, new k0(2));
            Updater.c(gapComposer, hVar, new k0(3));
            gapComposer.p(true);
            gapComposer.p(false);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new q2(function1, modifier, i);
        }
    }

    public static final void b(Function1 function1, Modifier modifier, Function1 function12, Composer composer, int i) {
        int i2;
        boolean z;
        Modifier modifier2;
        Function1 function13;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1783766393);
        if (gapComposer.h(function1)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i | 432;
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Modifier.Companion companion = Modifier.Companion.b;
            a((i3 & 14) | 27696, gapComposer, companion, function1);
            function13 = a;
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            function13 = function12;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(function1, modifier2, function13, i, 3);
        }
    }

    public static final ViewFactoryHolder c(LayoutNode layoutNode) {
        ViewFactoryHolder viewFactoryHolder = layoutNode.x;
        if (viewFactoryHolder != null) {
            return viewFactoryHolder;
        }
        throw q.p("Required value was null.");
    }
}

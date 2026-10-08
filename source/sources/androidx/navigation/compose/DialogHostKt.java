package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.DialogNavigator;
import defpackage.a0;
import defpackage.d;
import defpackage.p0;
import defpackage.r7;
import defpackage.s7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DialogHostKt {
    public static final void a(DialogNavigator dialogNavigator, Composer composer, int i) {
        int i2;
        boolean z;
        DialogNavigator dialogNavigator2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(294589392);
        if (gapComposer.h(dialogNavigator)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            SaveableStateHolder a = SaveableStateHolderKt.a(gapComposer);
            MutableState b = SnapshotStateKt.b(dialogNavigator.b().e, gapComposer);
            List list = (List) b.getValue();
            boolean booleanValue = ((Boolean) gapComposer.j(InspectionModeKt.a)).booleanValue();
            boolean f = gapComposer.f(list);
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            Object obj2 = K;
            if (f || K == obj) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                    if (booleanValue || navBackStackEntry.t.i.compareTo(Lifecycle.State.m) >= 0) {
                        arrayList.add(obj3);
                    }
                }
                snapshotStateList.addAll(arrayList);
                gapComposer.g0(snapshotStateList);
                obj2 = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj2;
            b(snapshotStateList2, (List) b.getValue(), gapComposer, 0);
            MutableState b2 = SnapshotStateKt.b(dialogNavigator.b().f, gapComposer);
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = new SnapshotStateList();
                gapComposer.g0(K2);
            }
            SnapshotStateList snapshotStateList3 = (SnapshotStateList) K2;
            gapComposer.W(-367419233);
            ListIterator listIterator = snapshotStateList2.listIterator();
            while (true) {
                StateListIterator stateListIterator = (StateListIterator) listIterator;
                if (!stateListIterator.hasNext()) {
                    break;
                }
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) stateListIterator.next();
                NavDestination navDestination = navBackStackEntry2.k;
                navDestination.getClass();
                DialogNavigator.Destination destination = (DialogNavigator.Destination) navDestination;
                boolean h = gapComposer.h(dialogNavigator) | gapComposer.h(navBackStackEntry2);
                Object K3 = gapComposer.K();
                if (h || K3 == obj) {
                    K3 = new p0(13, dialogNavigator, navBackStackEntry2);
                    gapComposer.g0(K3);
                }
                DialogNavigator dialogNavigator3 = dialogNavigator;
                AndroidDialog_androidKt.a((Function0) K3, destination.o, ComposableLambdaKt.b(1129586364, new r7(navBackStackEntry2, dialogNavigator3, a, snapshotStateList3, destination, 0), gapComposer), gapComposer, 384);
                dialogNavigator = dialogNavigator3;
            }
            dialogNavigator2 = dialogNavigator;
            gapComposer.p(false);
            Set set = (Set) b2.getValue();
            boolean f2 = gapComposer.f(b2) | gapComposer.h(dialogNavigator2);
            Object K4 = gapComposer.K();
            if (f2 || K4 == obj) {
                K4 = new DialogHostKt$DialogHost$2$1(b2, dialogNavigator2, snapshotStateList3, null);
                gapComposer.g0(K4);
            }
            EffectsKt.f(set, snapshotStateList3, (Function2) K4, gapComposer);
        } else {
            dialogNavigator2 = dialogNavigator;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d(i, 8, dialogNavigator2);
        }
    }

    public static final void b(List list, Collection collection, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1537894851);
        if (gapComposer.h(list)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(collection)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            boolean booleanValue = ((Boolean) gapComposer.j(InspectionModeKt.a)).booleanValue();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                LifecycleRegistry lifecycleRegistry = navBackStackEntry.t;
                boolean g = gapComposer.g(booleanValue) | gapComposer.h(list) | gapComposer.h(navBackStackEntry);
                Object K = gapComposer.K();
                if (g || K == Composer.Companion.a) {
                    K = new s7(navBackStackEntry, list, booleanValue);
                    gapComposer.g0(K);
                }
                EffectsKt.c(lifecycleRegistry, (Function1) K, gapComposer);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 9, list, collection);
        }
    }
}

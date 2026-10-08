package androidx.navigation;

import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import defpackage.le;
import defpackage.ma;
import defpackage.u2;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.TransformingSequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Navigator<D extends NavDestination> {
    public NavController.NavControllerNavigatorState a;
    public boolean b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Name {
        String value();
    }

    public abstract NavDestination a();

    public final NavigatorState b() {
        NavController.NavControllerNavigatorState navControllerNavigatorState = this.a;
        if (navControllerNavigatorState != null) {
            return navControllerNavigatorState;
        }
        u2.l("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public void d(List list, NavOptions navOptions) {
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(list), new ma(5, this, navOptions)), new le(18)));
        while (filteringSequence$iterator$1.hasNext()) {
            b().e((NavBackStackEntry) filteringSequence$iterator$1.next());
        }
    }

    public void e(NavBackStackEntry navBackStackEntry, boolean z) {
        List list = (List) b().e.getValue();
        if (list.contains(navBackStackEntry)) {
            ListIterator listIterator = list.listIterator(list.size());
            NavBackStackEntry navBackStackEntry2 = null;
            while (f()) {
                navBackStackEntry2 = (NavBackStackEntry) listIterator.previous();
                if (Intrinsics.a(navBackStackEntry2, navBackStackEntry)) {
                    break;
                }
            }
            if (navBackStackEntry2 != null) {
                b().c(navBackStackEntry2, z);
                return;
            }
            return;
        }
        u2.i("popBackStack was called with ", navBackStackEntry, " which does not exist in back stack ", list);
    }

    public boolean f() {
        return true;
    }

    public NavDestination c(NavDestination navDestination) {
        return navDestination;
    }
}

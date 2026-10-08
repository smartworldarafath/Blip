package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import defpackage.r1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawerState {
    public final AnchoredDraggableState a;

    public DrawerState(DrawerValue drawerValue, Function1 function1) {
        this.a = new AnchoredDraggableState(drawerValue, new defpackage.c(19, this), new r1(15, this), DrawerKt.a, function1);
    }

    public final Density a() {
        throw new IllegalArgumentException(("The density on DrawerState (" + this + ") was not set. Did you use DrawerState with the Drawer composable?").toString());
    }
}

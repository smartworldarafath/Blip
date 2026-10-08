package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.navigation.NavBackStackEntry;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zb implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ State k;

    public /* synthetic */ zb(State state, int i) {
        this.j = i;
        this.k = state;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        State state = this.k;
        switch (i) {
            case 0:
                List list = (List) state.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Intrinsics.a(((NavBackStackEntry) obj).k.j, "composable")) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 1:
                AnimationVector2D animationVector2D = SelectionMagnifierKt.a;
                return new Offset(((Offset) state.getValue()).a);
            default:
                AnimationVector2D animationVector2D2 = SelectionMagnifierKt.a;
                return new Offset(((Offset) state.getValue()).a);
        }
    }
}

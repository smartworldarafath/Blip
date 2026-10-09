package defpackage;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.home.PeerTrayKt;
import net.blip.libblip.PeerPickerContent;
import net.blip.shared.SelectionListKt;
import net.blip.shared.SelectionListState;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class md implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ Function1 m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    public /* synthetic */ md(Modifier modifier, LazyListState lazyListState, PaddingValuesImpl paddingValuesImpl, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, SelectionListState selectionListState, Function1 function1, int i) {
        this.k = modifier;
        this.o = lazyListState;
        this.p = paddingValuesImpl;
        this.q = vertical;
        this.r = horizontal;
        this.s = flingBehavior;
        this.l = z;
        this.t = selectionListState;
        this.m = function1;
        this.n = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.n;
        Object obj3 = this.t;
        Object obj4 = this.s;
        Object obj5 = this.r;
        Object obj6 = this.q;
        Object obj7 = this.p;
        Object obj8 = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                PeerTrayKt.a(this.k, (PeerPickerContent.Overview) obj8, this.m, (Function2) obj5, this.l, (Function1) obj7, (Function1) obj6, (Function0) obj4, (Function0) obj3, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                SelectionListKt.a(this.k, (LazyListState) obj8, (PaddingValuesImpl) obj7, (Arrangement.Vertical) obj6, (Alignment.Horizontal) obj5, (FlingBehavior) obj4, this.l, (SelectionListState) obj3, this.m, (Composer) obj, a2);
                return unit;
        }
    }

    public /* synthetic */ md(Modifier modifier, PeerPickerContent.Overview overview, Function1 function1, Function2 function2, boolean z, Function1 function12, Function1 function13, Function0 function0, Function0 function02, int i) {
        this.k = modifier;
        this.o = overview;
        this.m = function1;
        this.r = function2;
        this.l = z;
        this.p = function12;
        this.q = function13;
        this.s = function0;
        this.t = function02;
        this.n = i;
    }
}

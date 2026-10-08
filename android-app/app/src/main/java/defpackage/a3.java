package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.AsyncImageKt;
import coil3.compose.internal.AsyncImageState;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.lockups.BlankStateLockupKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ a3(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, int i, int i2) {
        this.j = 0;
        this.o = asyncImageState;
        this.l = str;
        this.k = modifier;
        this.p = function1;
        this.q = function12;
        this.r = alignment;
        this.s = contentScale;
        this.m = i;
        this.n = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        Object obj3 = this.s;
        Object obj4 = this.r;
        Object obj5 = this.q;
        Object obj6 = this.p;
        Object obj7 = this.l;
        Object obj8 = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                int a2 = RecomposeScopeImplKt.a(this.n);
                AsyncImageKt.a((AsyncImageState) obj8, (String) obj7, this.k, (Function1) obj6, (Function1) obj5, (Alignment) obj4, (ContentScale) obj3, (Composer) obj, a, a2);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a3 = RecomposeScopeImplKt.a(i2 | 1);
                BlankStateLockupKt.a(this.k, (ImageVector) obj8, (String) obj7, (String) obj6, (String) obj5, (Function2) obj4, (Function0) obj3, (Composer) obj, a3, this.n);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a4 = RecomposeScopeImplKt.a(i2 | 1);
                ListRowKt.b(this.k, (Function2) obj8, (Function2) obj7, (MutableInteractionSource) obj6, (Function0) obj5, (Function0) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, a4, this.n);
                return unit;
        }
    }

    public /* synthetic */ a3(Modifier modifier, Object obj, Object obj2, Object obj3, Object obj4, Function function, Function function2, int i, int i2, int i3) {
        this.j = i3;
        this.k = modifier;
        this.o = obj;
        this.l = obj2;
        this.p = obj3;
        this.q = obj4;
        this.r = function;
        this.s = function2;
        this.m = i;
        this.n = i2;
    }
}

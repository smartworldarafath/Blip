package defpackage;

import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.SubheadingKt;
import net.blip.android.ui.lockups.ScreenLockupKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class te implements Function2 {
    public final /* synthetic */ int j = 3;
    public final /* synthetic */ long k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ te(long j, TextStyle textStyle, Function2 function2, int i, int i2) {
        this.k = j;
        this.o = textStyle;
        this.n = function2;
        this.l = i;
        this.m = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.l;
        Object obj3 = this.n;
        Object obj4 = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                ScreenLockupKt.b(this.k, (Function2) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, a, this.m);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                ScreenLockupKt.a((Modifier) obj3, this.k, (List) obj4, (Composer) obj, a2, this.m);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                int a3 = RecomposeScopeImplKt.a(i2 | 1);
                SubheadingKt.a((Modifier) obj3, (String) obj4, this.k, (Composer) obj, a3, this.m);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a4 = RecomposeScopeImplKt.a(i2 | 1);
                TextFieldImplKt.b(this.k, (TextStyle) obj4, (Function2) obj3, (Composer) obj, a4, this.m);
                return unit;
        }
    }

    public /* synthetic */ te(long j, Function2 function2, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.k = j;
        this.n = function2;
        this.o = composableLambdaImpl;
        this.l = i;
        this.m = i2;
    }

    public /* synthetic */ te(Modifier modifier, long j, List list, int i, int i2) {
        this.n = modifier;
        this.k = j;
        this.o = list;
        this.l = i;
        this.m = i2;
    }

    public /* synthetic */ te(Modifier modifier, String str, long j, int i, int i2) {
        this.n = modifier;
        this.o = str;
        this.k = j;
        this.l = i;
        this.m = i2;
    }
}

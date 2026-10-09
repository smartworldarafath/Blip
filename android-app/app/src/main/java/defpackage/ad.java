package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.shared.ParagraphsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ad implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ long l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ ad(Modifier modifier, long j, Function2 function2, Function2 function22, Function0 function0, int i, int i2) {
        this.k = modifier;
        this.l = j;
        this.o = function2;
        this.p = function22;
        this.q = function0;
        this.m = i;
        this.n = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        Object obj3 = this.q;
        Object obj4 = this.p;
        Object obj5 = this.o;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                ParagraphsKt.a(this.k, (Alignment.Horizontal) obj5, (String) obj4, (TextStyle) obj3, this.l, (Composer) obj, a, this.n);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                ScreenLockupKt.d(this.k, this.l, (Function2) obj5, (Function2) obj4, (Function0) obj3, (Composer) obj, a2, this.n);
                return unit;
        }
    }

    public /* synthetic */ ad(Modifier modifier, Alignment.Horizontal horizontal, String str, TextStyle textStyle, long j, int i, int i2) {
        this.k = modifier;
        this.o = horizontal;
        this.p = str;
        this.q = textStyle;
        this.l = j;
        this.m = i;
        this.n = i2;
    }
}

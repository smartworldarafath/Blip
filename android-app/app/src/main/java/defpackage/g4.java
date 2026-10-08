package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g4 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ CharSequence k;
    public final /* synthetic */ Modifier l;
    public final /* synthetic */ TextStyle m;
    public final /* synthetic */ int n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ int p;
    public final /* synthetic */ int q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ int s;
    public final /* synthetic */ int t;

    public /* synthetic */ g4(CharSequence charSequence, Modifier modifier, TextStyle textStyle, int i, boolean z, int i2, int i3, Object obj, int i4, int i5, int i6) {
        this.j = i6;
        this.k = charSequence;
        this.l = modifier;
        this.m = textStyle;
        this.n = i;
        this.o = z;
        this.p = i2;
        this.q = i3;
        this.r = obj;
        this.s = i4;
        this.t = i5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.s;
        Object obj3 = this.r;
        CharSequence charSequence = this.k;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                BasicTextKt.b((String) charSequence, this.l, this.m, this.n, this.o, this.p, this.q, (ColorProducer) obj3, (Composer) obj, a, this.t);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                PlatformTextKt.c((String) charSequence, this.l, this.m, this.n, this.o, this.p, this.q, (ColorProducer) obj3, (Composer) obj, a2, this.t);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a3 = RecomposeScopeImplKt.a(i2 | 1);
                PlatformTextKt.b((AnnotatedString) charSequence, this.l, this.m, this.n, this.o, this.p, this.q, (Map) obj3, (Composer) obj, a3, this.t);
                return unit;
        }
    }
}

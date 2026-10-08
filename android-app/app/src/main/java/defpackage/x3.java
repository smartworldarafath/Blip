package defpackage;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ x3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.j = i2;
        this.l = obj;
        this.m = obj2;
        this.n = obj3;
        this.o = obj4;
        this.p = obj5;
        this.k = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Object obj3 = this.n;
        Object obj4 = this.p;
        Unit unit = Unit.a;
        int i2 = this.k;
        Object obj5 = this.m;
        Object obj6 = this.l;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AvatarKt.g((Modifier) obj6, (AvatarTheme.Appearance) obj5, (ByteString) obj3, (String) this.o, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2) | 1;
                ((ComposableLambdaImpl) obj6).e((Float) obj5, (Color) obj3, this.o, this.p, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                TransitionKt.a((Transition) obj6, (Transition.TransitionAnimationState) obj5, this.n, this.o, (FiniteAnimationSpec) obj4, (Composer) obj, a2);
                return unit;
        }
    }
}

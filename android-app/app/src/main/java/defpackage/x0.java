package defpackage;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.material.SnackbarHostKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.DividerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x0 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ int l;

    public /* synthetic */ x0(Modifier modifier, int i) {
        this.j = 2;
        this.k = modifier;
        this.l = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.l;
        Modifier modifier = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                AndroidCursorHandle_androidKt.b(modifier, composer, RecomposeScopeImplKt.a(1), i2);
                return unit;
            case 1:
                DividerKt.a(modifier, composer, RecomposeScopeImplKt.a(1), i2);
                return unit;
            default:
                SnackbarHostKt.a(modifier, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }

    public /* synthetic */ x0(Modifier modifier, int i, int i2, int i3) {
        this.j = i3;
        this.k = modifier;
        this.l = i2;
    }
}

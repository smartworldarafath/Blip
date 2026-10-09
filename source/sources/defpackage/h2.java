package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.PlatformDefaultTextContextMenuProviders_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h2 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ ComposableLambdaImpl l;
    public final /* synthetic */ int m;

    public /* synthetic */ h2(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.j = i2;
        this.k = modifier;
        this.l = composableLambdaImpl;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        ComposableLambdaImpl composableLambdaImpl = this.l;
        Modifier modifier = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                AndroidTextContextMenuToolbarProvider_androidKt.a(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 1:
                AndroidTextContextMenuToolbarProvider_androidKt.b(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                DefaultTextContextMenuDropdownProvider_androidKt.d(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                PlatformDefaultTextContextMenuProviders_androidKt.b(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                PlatformDefaultTextContextMenuProviders_androidKt.a(modifier, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}

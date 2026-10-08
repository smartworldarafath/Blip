package defpackage;

import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.android.ui.settings.SettingsPeerHeaderKt;
import net.blip.libblip.DeviceKind;
import net.blip.libblip.Peer;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ z3(Object obj, int i, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.j = 2;
        this.k = obj;
        this.l = i;
        this.n = lazyLayoutPinnedItemList;
        this.o = composableLambdaImpl;
        this.m = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        int i2 = this.l;
        Object obj3 = this.k;
        Unit unit = Unit.a;
        Object obj4 = this.o;
        Object obj5 = this.n;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AvatarKt.b((Modifier) obj3, (AvatarTheme.Appearance) obj5, (DeviceKind) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.m);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                BoxWithConstraintsKt.a((Modifier) obj3, (Alignment) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.m);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(this.m | 1);
                LazyLayoutPinnableItemKt.a(this.k, this.l, (LazyLayoutPinnedItemList) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, a);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                ScreenLockupKt.c((Modifier) obj3, (String) obj5, (TextStyle) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.m);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                SettingsComposablesKt.d((Modifier) obj3, (String) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.m);
                return unit;
            default:
                ((Integer) obj2).getClass();
                SettingsPeerHeaderKt.a((Modifier) obj3, (Peer) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.m);
                return unit;
        }
    }

    public /* synthetic */ z3(Modifier modifier, Object obj, Object obj2, int i, int i2, int i3) {
        this.j = i3;
        this.k = modifier;
        this.n = obj;
        this.o = obj2;
        this.l = i;
        this.m = i2;
    }
}

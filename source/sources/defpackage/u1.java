package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.libblip.Peer;
import net.blip.libblip.User;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;
import net.blip.shared.LinkableTextKt;
import net.blip.shared.SimpleLinkTextButton;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u1 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ u1(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2, int i3) {
        this.j = i3;
        this.m = obj;
        this.n = obj2;
        this.o = obj3;
        this.p = obj4;
        this.k = i;
        this.l = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.k;
        Object obj3 = this.p;
        Object obj4 = this.o;
        Object obj5 = this.n;
        Object obj6 = this.m;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidPopup_androidKt.a((PopupPositionProvider) obj6, (Function0) obj5, (PopupProperties) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.l);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                AvatarKt.d((Modifier) obj6, (AvatarTheme) obj5, (Peer) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.l);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                AvatarKt.c((Modifier) obj6, (AvatarTheme.Appearance) obj5, (User) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.l);
                return unit;
            default:
                ((Integer) obj2).getClass();
                LinkableTextKt.a((Modifier) obj6, (String) obj5, (TextStyle) obj4, (SimpleLinkTextButton) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), this.l);
                return unit;
        }
    }
}

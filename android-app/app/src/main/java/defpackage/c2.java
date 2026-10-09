package defpackage;

import android.net.Uri;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.gallery.GalleryVideoPlayerKt;
import net.blip.android.ui.onboarding.ComposablesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c2 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;

    public /* synthetic */ c2(String str, boolean z, Function0 function0, int i, int i2) {
        this.j = 1;
        this.n = str;
        this.k = z;
        this.l = function0;
        this.m = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        int i2 = this.m;
        boolean z = this.k;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        Object obj4 = this.n;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidSelectionHandles_androidKt.c((Modifier) obj4, (Function0) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(7);
                ComposablesKt.a((String) obj4, this.k, (Function0) obj3, (Composer) obj, a, this.m);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                GalleryVideoPlayerKt.a((Modifier) obj4, (Uri) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                ((Integer) obj2).getClass();
                TextFieldSelectionManagerKt.a(z, (ResolvedTextDirection) obj4, (TextFieldSelectionManager) obj3, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }

    public /* synthetic */ c2(Modifier modifier, Object obj, boolean z, int i, int i2) {
        this.j = i2;
        this.n = modifier;
        this.l = obj;
        this.k = z;
        this.m = i;
    }

    public /* synthetic */ c2(boolean z, ResolvedTextDirection resolvedTextDirection, TextFieldSelectionManager textFieldSelectionManager, int i) {
        this.j = 3;
        this.k = z;
        this.n = resolvedTextDirection;
        this.l = textFieldSelectionManager;
        this.m = i;
    }
}

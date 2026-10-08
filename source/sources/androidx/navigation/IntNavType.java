package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntNavType extends NavType<Integer> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        return Integer.valueOf(SavedStateReader.c(str, bundle));
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "integer";
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        int parseInt;
        if (StringsKt.J(str, "0x", false)) {
            String substring = str.substring(2);
            CharsKt.b(16);
            parseInt = Integer.parseInt(substring, 16);
        } else {
            parseInt = Integer.parseInt(str);
        }
        return Integer.valueOf(parseInt);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        int intValue = ((Number) obj).intValue();
        str.getClass();
        bundle.putInt(str, intValue);
    }
}

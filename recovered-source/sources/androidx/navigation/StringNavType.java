package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringNavType extends NavType<String> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        String string = bundle.getString(str);
        if (string != null) {
            return string;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string";
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        if (str.equals("null")) {
            return null;
        }
        return str;
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String str2 = (String) obj;
        str.getClass();
        if (str2 != null) {
            bundle.putString(str, str2);
        } else {
            bundle.putString(str, null);
        }
    }
}

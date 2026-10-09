package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BoolNavType extends NavType<Boolean> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        boolean z = bundle.getBoolean(str, false);
        if (!z && bundle.getBoolean(str, true)) {
            SavedStateReaderKt.a(str);
            throw null;
        }
        return Boolean.valueOf(z);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "boolean";
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        boolean z;
        if (str.equals("true")) {
            z = true;
        } else if (str.equals("false")) {
            z = false;
        } else {
            u2.g("A boolean NavType only accepts \"true\" or \"false\" values.");
            return null;
        }
        return Boolean.valueOf(z);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        str.getClass();
        bundle.putBoolean(str, booleanValue);
    }
}

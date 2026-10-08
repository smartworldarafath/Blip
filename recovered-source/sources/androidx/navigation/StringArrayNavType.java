package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringArrayNavType extends CollectionNavType<String[]> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        String[] stringArray = bundle.getStringArray(str);
        if (stringArray != null) {
            return stringArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        String[] strArr = (String[]) obj;
        if (strArr != null) {
            String[] strArr2 = {str};
            int length = strArr.length;
            Object[] copyOf = Arrays.copyOf(strArr, length + 1);
            System.arraycopy(strArr2, 0, copyOf, length, 1);
            return (String[]) copyOf;
        }
        return new String[]{str};
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        return new String[]{str};
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String[] strArr = (String[]) obj;
        str.getClass();
        if (strArr != null) {
            bundle.putStringArray(str, strArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object f() {
        return new String[0];
    }
}

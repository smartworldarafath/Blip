package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BoolArrayNavType extends CollectionNavType<boolean[]> {
    public static boolean[] g(String str) {
        return new boolean[]{((Boolean) NavType.g.d(str)).booleanValue()};
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        boolean[] booleanArray = bundle.getBooleanArray(str);
        if (booleanArray != null) {
            return booleanArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "boolean[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        boolean[] zArr = (boolean[]) obj;
        boolean[] g = g(str);
        if (zArr != null) {
            int length = zArr.length;
            boolean[] copyOf = Arrays.copyOf(zArr, length + 1);
            System.arraycopy(g, 0, copyOf, length, 1);
            return copyOf;
        }
        return g;
    }

    @Override // androidx.navigation.NavType
    public final /* bridge */ /* synthetic */ Object d(String str) {
        return g(str);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        boolean[] zArr = (boolean[]) obj;
        str.getClass();
        if (zArr != null) {
            bundle.putBooleanArray(str, zArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object f() {
        return new boolean[0];
    }
}

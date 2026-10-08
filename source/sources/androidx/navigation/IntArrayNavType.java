package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntArrayNavType extends CollectionNavType<int[]> {
    public static int[] g(String str) {
        return new int[]{((Number) NavType.a.d(str)).intValue()};
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        int[] intArray = bundle.getIntArray(str);
        if (intArray != null) {
            return intArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "integer[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        int[] iArr = (int[]) obj;
        int[] g = g(str);
        if (iArr != null) {
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length + 1);
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
        int[] iArr = (int[]) obj;
        str.getClass();
        if (iArr != null) {
            bundle.putIntArray(str, iArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object f() {
        return new int[0];
    }
}

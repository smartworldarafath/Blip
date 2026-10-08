package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongArrayNavType extends CollectionNavType<long[]> {
    public static long[] g(String str) {
        return new long[]{((Number) NavType.c.d(str)).longValue()};
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        long[] longArray = bundle.getLongArray(str);
        if (longArray != null) {
            return longArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "long[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        long[] jArr = (long[]) obj;
        long[] g = g(str);
        if (jArr != null) {
            int length = jArr.length;
            long[] copyOf = Arrays.copyOf(jArr, length + 1);
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
        long[] jArr = (long[]) obj;
        str.getClass();
        if (jArr != null) {
            bundle.putLongArray(str, jArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object f() {
        return new long[0];
    }
}

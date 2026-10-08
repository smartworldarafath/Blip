package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatArrayNavType extends CollectionNavType<float[]> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.d(str, bundle)) {
            return null;
        }
        float[] floatArray = bundle.getFloatArray(str);
        if (floatArray != null) {
            return floatArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "float[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        float[] fArr = (float[]) obj;
        if (fArr != null) {
            float[] fArr2 = {Float.parseFloat(str)};
            int length = fArr.length;
            float[] copyOf = Arrays.copyOf(fArr, length + 1);
            System.arraycopy(fArr2, 0, copyOf, length, 1);
            return copyOf;
        }
        return new float[]{Float.parseFloat(str)};
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        return new float[]{Float.parseFloat(str)};
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        float[] fArr = (float[]) obj;
        str.getClass();
        if (fArr != null) {
            bundle.putFloatArray(str, fArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object f() {
        return new float[0];
    }
}

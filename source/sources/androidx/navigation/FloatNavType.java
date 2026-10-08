package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReaderKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatNavType extends NavType<Float> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        float f = bundle.getFloat(str, Float.MIN_VALUE);
        if (f == Float.MIN_VALUE && bundle.getFloat(str, Float.MAX_VALUE) == Float.MAX_VALUE) {
            SavedStateReaderKt.a(str);
            throw null;
        }
        return Float.valueOf(f);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "float";
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        return Float.valueOf(Float.parseFloat(str));
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        float floatValue = ((Number) obj).floatValue();
        str.getClass();
        bundle.putFloat(str, floatValue);
    }
}

package androidx.savedstate;

import android.os.Bundle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SavedStateReader {
    public static final boolean a(Bundle bundle, Bundle bundle2) {
        bundle2.getClass();
        return SavedStateReaderKt__SavedStateReader_androidKt.a(bundle, bundle2);
    }

    public static final int b(Bundle bundle) {
        return SavedStateReaderKt__SavedStateReader_androidKt.b(bundle);
    }

    public static final int c(String str, Bundle bundle) {
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && bundle.getInt(str, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            SavedStateReaderKt.a(str);
            throw null;
        }
        return i;
    }

    public static final boolean d(String str, Bundle bundle) {
        str.getClass();
        if (bundle.containsKey(str) && bundle.get(str) == null) {
            return true;
        }
        return false;
    }
}

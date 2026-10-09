package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReaderKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongNavType extends NavType<Long> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE && bundle.getLong(str, Long.MAX_VALUE) == Long.MAX_VALUE) {
            SavedStateReaderKt.a(str);
            throw null;
        }
        return Long.valueOf(j);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "long";
    }

    @Override // androidx.navigation.NavType
    public final Object d(String str) {
        String str2;
        long parseLong;
        if (StringsKt.l(str, "L", false)) {
            str2 = str.substring(0, str.length() - 1);
        } else {
            str2 = str;
        }
        if (StringsKt.J(str, "0x", false)) {
            String substring = str2.substring(2);
            CharsKt.b(16);
            parseLong = Long.parseLong(substring, 16);
        } else {
            parseLong = Long.parseLong(str2);
        }
        return Long.valueOf(parseLong);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        long longValue = ((Number) obj).longValue();
        str.getClass();
        bundle.putLong(str, longValue);
    }
}

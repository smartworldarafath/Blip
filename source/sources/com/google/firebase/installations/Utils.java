package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.time.Clock;
import com.google.firebase.installations.time.SystemClock;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Utils {
    public static final Pattern b = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static Utils c;
    public final Clock a;

    public Utils(SystemClock systemClock) {
        this.a = systemClock;
    }

    public final boolean a(PersistedInstallationEntry persistedInstallationEntry) {
        if (!TextUtils.isEmpty(persistedInstallationEntry.a())) {
            long b2 = persistedInstallationEntry.b() + persistedInstallationEntry.e();
            ((SystemClock) this.a).getClass();
            if (b2 < (System.currentTimeMillis() / 1000) + 3600) {
                return true;
            }
            return false;
        }
        return true;
    }
}

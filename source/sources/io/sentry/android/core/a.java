package io.sentry.android.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import androidx.core.app.FrameMetricsAggregator;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.NoOpLogger;
import io.sentry.android.core.util.AndroidLazyEvaluator;
import io.sentry.transport.ICurrentDateProvider;
import io.sentry.util.LazyEvaluator;
import java.util.Timer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ICurrentDateProvider, LazyEvaluator.Evaluator, AndroidLazyEvaluator.AndroidEvaluator {
    public final /* synthetic */ int j;

    @Override // io.sentry.android.core.util.AndroidLazyEvaluator.AndroidEvaluator
    public Object a(Context context) {
        PackageManager.PackageInfoFlags of;
        PackageInfo packageInfo;
        PackageManager.ApplicationInfoFlags of2;
        ApplicationInfo applicationInfo;
        String str = null;
        switch (this.j) {
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                try {
                    PackageManager packageManager = context.getPackageManager();
                    String packageName = context.getPackageName();
                    of = PackageManager.PackageInfoFlags.of(0L);
                    packageInfo = packageManager.getPackageInfo(packageName, of);
                    return packageInfo;
                } catch (Throwable unused) {
                    return null;
                }
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                try {
                    return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                } catch (Throwable unused2) {
                    return null;
                }
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                try {
                    ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                    int i = applicationInfo2.labelRes;
                    if (i == 0) {
                        CharSequence charSequence = applicationInfo2.nonLocalizedLabel;
                        if (charSequence != null) {
                            str = charSequence.toString();
                        } else {
                            str = context.getPackageManager().getApplicationLabel(applicationInfo2).toString();
                        }
                    } else {
                        str = context.getString(i);
                    }
                } catch (Throwable unused3) {
                }
                return str;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                try {
                    PackageManager packageManager2 = context.getPackageManager();
                    String packageName2 = context.getPackageName();
                    of2 = PackageManager.ApplicationInfoFlags.of(128L);
                    applicationInfo = packageManager2.getApplicationInfo(packageName2, of2);
                    return applicationInfo;
                } catch (Throwable unused4) {
                    return null;
                }
            default:
                try {
                    return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                } catch (Throwable unused5) {
                    return null;
                }
        }
    }

    @Override // io.sentry.transport.ICurrentDateProvider
    public long b() {
        int i = ANRWatchDog.u;
        return SystemClock.uptimeMillis();
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        switch (this.j) {
            case 1:
                return new FrameMetricsAggregator();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ContextUtils.a(NoOpLogger.a);
            default:
                return new Timer(true);
        }
    }
}

package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.util.AndroidLazyEvaluator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContextUtils {
    public static final AndroidLazyEvaluator a = new AndroidLazyEvaluator(new a(2));
    public static final AndroidLazyEvaluator b = new AndroidLazyEvaluator(new a(3));
    public static final AndroidLazyEvaluator c = new AndroidLazyEvaluator(new a(4));
    public static final AndroidLazyEvaluator d = new AndroidLazyEvaluator(new a(5));
    public static final AndroidLazyEvaluator e = new AndroidLazyEvaluator(new a(6));

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SideLoadedInfo {
        public final boolean a;
        public final String b;

        public SideLoadedInfo(String str, boolean z) {
            this.a = z;
            this.b = str;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SplitApksInfo {
        public final boolean a;
        public final String[] b;

        public SplitApksInfo(boolean z, String[] strArr) {
            this.a = z;
            this.b = strArr;
        }
    }

    public static String a(ILogger iLogger) {
        try {
            return Build.MODEL.split(" ", -1)[0];
        } catch (Throwable th) {
            iLogger.b(SentryLevel.ERROR, "Error getting device family.", th);
            return null;
        }
    }

    public static ActivityManager.MemoryInfo b(Context context, ILogger iLogger) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            iLogger.c(SentryLevel.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            iLogger.b(SentryLevel.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }

    public static PackageInfo c(Context context, BuildInfoProvider buildInfoProvider) {
        buildInfoProvider.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            return (PackageInfo) a.a(context);
        }
        return (PackageInfo) b.a(context);
    }

    public static boolean d() {
        try {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}

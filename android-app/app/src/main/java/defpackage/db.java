package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.media.metrics.LogSessionId;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureTarget;
import androidx.compose.ui.platform.AndroidComposeView;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class db {
    public static /* bridge */ /* synthetic */ RenderEffect c() {
        return RenderEffect.createOffsetEffect(0.0f, 0.0f);
    }

    public static /* bridge */ /* synthetic */ RenderEffect d(float f, float f2, Shader.TileMode tileMode) {
        return RenderEffect.createBlurEffect(f, f2, tileMode);
    }

    public static /* bridge */ /* synthetic */ LogSessionId e() {
        return LogSessionId.LOG_SESSION_ID_NONE;
    }

    public static /* synthetic */ ScrollCaptureTarget i(AndroidComposeView androidComposeView, Rect rect, Point point, ScrollCaptureCallback scrollCaptureCallback) {
        return new ScrollCaptureTarget(androidComposeView, rect, point, scrollCaptureCallback);
    }

    public static /* bridge */ /* synthetic */ void q(TelephonyManager telephonyManager, TelephonyCallback telephonyCallback) {
        telephonyManager.unregisterTelephonyCallback(telephonyCallback);
    }

    public static /* bridge */ /* synthetic */ void r(TelephonyManager telephonyManager, Executor executor, TelephonyCallback telephonyCallback) {
        telephonyManager.registerTelephonyCallback(executor, telephonyCallback);
    }

    public static /* bridge */ /* synthetic */ boolean v(LogSessionId logSessionId) {
        return logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE);
    }
}

package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import android.os.Build;
import com.google.common.base.Preconditions;
import defpackage.db;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlayerId {
    public static final PlayerId c;
    public final String a;
    public final LogSessionIdApi31 b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LogSessionIdApi31 {
        public LogSessionId a;
    }

    static {
        new PlayerId("");
        c = new PlayerId("preload");
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.media3.exoplayer.analytics.PlayerId$LogSessionIdApi31, java.lang.Object] */
    public PlayerId(String str) {
        LogSessionIdApi31 logSessionIdApi31;
        this.a = str;
        if (Build.VERSION.SDK_INT >= 31) {
            ?? obj = new Object();
            obj.a = db.e();
            logSessionIdApi31 = obj;
        } else {
            logSessionIdApi31 = null;
        }
        this.b = logSessionIdApi31;
    }

    public final synchronized LogSessionId a() {
        LogSessionIdApi31 logSessionIdApi31;
        logSessionIdApi31 = this.b;
        logSessionIdApi31.getClass();
        return logSessionIdApi31.a;
    }

    public final synchronized void b(LogSessionId logSessionId) {
        LogSessionIdApi31 logSessionIdApi31 = this.b;
        logSessionIdApi31.getClass();
        LogSessionId logSessionId2 = logSessionIdApi31.a;
        db.e();
        Preconditions.n(db.v(logSessionId2));
        logSessionIdApi31.a = logSessionId;
    }
}

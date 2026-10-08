package io.sentry.android.replay;

import defpackage.jb;
import defpackage.q;
import io.sentry.SentryReplayEvent;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LastSegmentData {
    public final ScreenshotRecorderConfig a;
    public final ReplayCache b;
    public final Date c;
    public final int d;
    public final long e;
    public final SentryReplayEvent.ReplayType f;
    public final String g;
    public final List h;

    public LastSegmentData(ScreenshotRecorderConfig screenshotRecorderConfig, ReplayCache replayCache, Date date, int i, long j, SentryReplayEvent.ReplayType replayType, String str, List list) {
        this.a = screenshotRecorderConfig;
        this.b = replayCache;
        this.c = date;
        this.d = i;
        this.e = j;
        this.f = replayType;
        this.g = str;
        this.h = list;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof LastSegmentData) {
                LastSegmentData lastSegmentData = (LastSegmentData) obj;
                if (this.a.equals(lastSegmentData.a) && this.b == lastSegmentData.b && this.c.equals(lastSegmentData.c) && this.d == lastSegmentData.d && this.e == lastSegmentData.e && this.f == lastSegmentData.f && Intrinsics.a(this.g, lastSegmentData.g) && this.h.equals(lastSegmentData.h)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.f.hashCode() + jb.a(q.b(this.d, (this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31, 31), 31, this.e)) * 31;
        String str = this.g;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return this.h.hashCode() + ((hashCode2 + hashCode) * 31);
    }

    public final String toString() {
        return "LastSegmentData(recorderConfig=" + this.a + ", cache=" + this.b + ", timestamp=" + this.c + ", id=" + this.d + ", duration=" + this.e + ", replayType=" + this.f + ", screenAtStart=" + this.g + ", events=" + this.h + ')';
    }
}

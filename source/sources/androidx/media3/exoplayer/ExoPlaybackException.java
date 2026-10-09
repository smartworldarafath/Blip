package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {
    public final int l;
    public final String m;
    public final int n;
    public final Format o;
    public final int p;
    public final MediaSource.MediaPeriodId q;
    public final boolean r;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ExoPlaybackException(int i, Exception exc, int i2, String str, int i3, Format format, int i4, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        this(TextUtils.isEmpty(null) ? r1 : r1.concat(": null"), exc, i2, i, r5, r6, r7, i4, mediaPeriodId, SystemClock.elapsedRealtime(), z);
        String str2;
        int i5;
        Format format2;
        String str3;
        String str4;
        if (i != 0) {
            if (i != 1) {
                if (i != 3) {
                    str3 = "Unexpected runtime error";
                } else {
                    str3 = "Remote error";
                }
                str2 = str;
                i5 = i3;
                format2 = format;
            } else {
                StringBuilder sb = new StringBuilder();
                str2 = str;
                sb.append(str2);
                sb.append(" error, index=");
                i5 = i3;
                sb.append(i5);
                sb.append(", format=");
                format2 = format;
                sb.append(format2);
                sb.append(", format_supported=");
                String str5 = Util.a;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 4) {
                                    str4 = "YES";
                                } else {
                                    io.sentry.d.d();
                                    throw null;
                                }
                            } else {
                                str4 = "NO_EXCEEDS_CAPABILITIES";
                            }
                        } else {
                            str4 = "NO_UNSUPPORTED_DRM";
                        }
                    } else {
                        str4 = "NO_UNSUPPORTED_SUBTYPE";
                    }
                } else {
                    str4 = "NO";
                }
                sb.append(str4);
                str3 = sb.toString();
            }
        } else {
            str2 = str;
            i5 = i3;
            format2 = format;
            str3 = "Source error";
        }
    }

    public final ExoPlaybackException a(MediaSource.MediaPeriodId mediaPeriodId) {
        String message = getMessage();
        String str = Util.a;
        return new ExoPlaybackException(message, getCause(), this.j, this.l, this.m, this.n, this.o, this.p, mediaPeriodId, this.k, this.r);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExoPlaybackException(String str, Throwable th, int i, int i2, String str2, int i3, Format format, int i4, MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) {
        super(str, th, i, j);
        Bundle bundle = Bundle.EMPTY;
        Preconditions.e(!z || i2 == 1);
        Preconditions.e(th != null || i2 == 3);
        this.l = i2;
        this.m = str2;
        this.n = i3;
        this.o = format;
        this.p = i4;
        this.q = mediaPeriodId;
        this.r = z;
    }

    public ExoPlaybackException(int i, Exception exc, int i2) {
        this(i, exc, i2, null, -1, null, 4, null, false);
    }
}

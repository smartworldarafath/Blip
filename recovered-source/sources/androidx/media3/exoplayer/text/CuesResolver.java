package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.collect.ImmutableList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
interface CuesResolver {
    long a(long j);

    ImmutableList b(long j);

    boolean c(CuesWithTiming cuesWithTiming, long j);

    void clear();

    long d(long j);

    void e(long j);
}

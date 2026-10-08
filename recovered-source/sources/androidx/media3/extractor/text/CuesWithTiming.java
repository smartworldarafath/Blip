package androidx.media3.extractor.text;

import com.google.common.collect.ImmutableList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class CuesWithTiming {
    public final ImmutableList a;
    public final long b;
    public final long c;
    public final long d;

    public CuesWithTiming(long j, long j2, List list) {
        this.a = ImmutableList.m(list);
        this.b = j;
        this.c = j2;
        long j3 = -9223372036854775807L;
        if (j != -9223372036854775807L && j2 != -9223372036854775807L) {
            j3 = j + j2;
        }
        this.d = j3;
    }
}

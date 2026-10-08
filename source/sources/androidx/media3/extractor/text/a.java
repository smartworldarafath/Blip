package androidx.media3.extractor.text;

import com.google.common.base.Function;
import com.google.common.collect.Ordering;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        Ordering ordering = CuesWithTimingSubtitle.l;
        long j = ((CuesWithTiming) obj).b;
        if (j == -9223372036854775807L) {
            j = 0;
        }
        return Long.valueOf(j);
    }
}

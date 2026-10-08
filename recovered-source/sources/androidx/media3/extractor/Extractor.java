package androidx.media3.extractor;

import com.google.common.collect.ImmutableList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Extractor {
    void a();

    boolean b(ExtractorInput extractorInput);

    void c(long j, long j2);

    void d(ExtractorOutput extractorOutput);

    default List e() {
        return ImmutableList.r();
    }

    int f(ExtractorInput extractorInput, PositionHolder positionHolder);
}

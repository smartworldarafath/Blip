package androidx.media3.extractor.text.cea;

import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CeaSubtitle implements Subtitle {
    public final List j;

    public CeaSubtitle(List list) {
        this.j = list;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j) {
        if (j < 0) {
            return 0;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long b(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        return 0L;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List c(long j) {
        if (j >= 0) {
            return this.j;
        }
        return Collections.EMPTY_LIST;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return 1;
    }
}

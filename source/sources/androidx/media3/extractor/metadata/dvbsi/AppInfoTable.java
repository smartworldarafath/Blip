package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AppInfoTable implements Metadata.Entry {
    public final int a;
    public final String b;

    public AppInfoTable(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Ait(controlCode=");
        sb.append(this.a);
        sb.append(",url=");
        return q.l(sb, this.b, ")");
    }
}

package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.Metadata;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Id3Frame implements Metadata.Entry {
    public final String a;

    public Id3Frame(String str) {
        this.a = str;
    }

    public String toString() {
        return this.a;
    }
}

package androidx.media3.extractor.mp4;

import androidx.media3.extractor.SniffFailure;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IncorrectFragmentationSniffFailure implements SniffFailure {
    public static final IncorrectFragmentationSniffFailure b = new IncorrectFragmentationSniffFailure(true);
    public static final IncorrectFragmentationSniffFailure c = new IncorrectFragmentationSniffFailure(false);
    public final boolean a;

    public IncorrectFragmentationSniffFailure(boolean z) {
        this.a = z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IncorrectFragmentation{expected=");
        sb.append(!this.a);
        sb.append("}");
        return sb.toString();
    }
}

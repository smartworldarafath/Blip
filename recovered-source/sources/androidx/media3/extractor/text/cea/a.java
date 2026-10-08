package androidx.media3.extractor.text.cea;

import androidx.media3.extractor.text.cea.Cea708Decoder;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.compare(((Cea708Decoder.Cea708CueInfo) obj2).b, ((Cea708Decoder.Cea708CueInfo) obj).b);
    }
}

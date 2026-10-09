package defpackage;

import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.base.Predicate;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k7 implements Predicate {
    public final /* synthetic */ int j;

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        switch (this.j) {
            case 0:
                if (((Map.Entry) obj).getKey() == null) {
                    return false;
                }
                return true;
            case 1:
                if (((String) obj) == null) {
                    return false;
                }
                return true;
            default:
                InternalFrame internalFrame = (InternalFrame) obj;
                Pattern pattern = GaplessInfoHolder.c;
                if (!internalFrame.b.equals("com.apple.iTunes") || !internalFrame.c.equals("iTunSMPB")) {
                    return false;
                }
                return true;
        }
    }
}

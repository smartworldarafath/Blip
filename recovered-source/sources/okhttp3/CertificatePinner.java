package okhttp3;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.tls.CertificateChainCleaner;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CertificatePinner {
    public static final CertificatePinner c = new CertificatePinner(CollectionsKt.a0(new Builder().a), null);
    public final Set a;
    public final CertificateChainCleaner b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final ArrayList a = new ArrayList();
    }

    public CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner) {
        this.a = set;
        this.b = certificateChainCleaner;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (certificatePinner.a.equals(this.a) && Intrinsics.a(certificatePinner.b, this.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.a.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.b;
        if (certificateChainCleaner != null) {
            i = certificateChainCleaner.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}

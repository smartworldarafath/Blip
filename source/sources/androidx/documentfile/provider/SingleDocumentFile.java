package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class SingleDocumentFile extends DocumentFile {
    public Context a;
    public Uri b;

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean a() {
        throw null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final String d() {
        return DocumentsContractApi19.b(this.a, this.b, "_display_name");
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean e() {
        throw null;
    }
}

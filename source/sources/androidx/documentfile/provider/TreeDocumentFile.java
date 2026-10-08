package androidx.documentfile.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TreeDocumentFile extends DocumentFile {
    public Context a;
    public Uri b;

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean a() {
        Context context = this.a;
        Uri uri = this.b;
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String b = DocumentsContractApi19.b(context, uri, "mime_type");
        Cursor cursor = null;
        long j = 0;
        try {
            try {
                cursor = context.getContentResolver().query(uri, new String[]{"flags"}, null, null, null);
                if (cursor.moveToFirst() && !cursor.isNull(0)) {
                    j = cursor.getLong(0);
                }
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
            }
            DocumentsContractApi19.a(cursor);
            int i = (int) j;
            if (TextUtils.isEmpty(b)) {
                return false;
            }
            if ((i & 4) == 0 && ((!"vnd.android.document/directory".equals(b) || (i & 8) == 0) && (TextUtils.isEmpty(b) || (2 & i) == 0))) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            DocumentsContractApi19.a(cursor);
            throw th;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final String d() {
        return DocumentsContractApi19.b(this.a, this.b, "_display_name");
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public final boolean e() {
        return "vnd.android.document/directory".equals(DocumentsContractApi19.b(this.a, this.b, "mime_type"));
    }
}

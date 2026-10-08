package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DocumentFile {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.documentfile.provider.DocumentFile, java.lang.Object, androidx.documentfile.provider.SingleDocumentFile] */
    public static DocumentFile b(Context context, Uri uri) {
        ?? obj = new Object();
        obj.a = context;
        obj.b = uri;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.documentfile.provider.DocumentFile, java.lang.Object, androidx.documentfile.provider.TreeDocumentFile] */
    public static DocumentFile c(Context context, Uri uri) {
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        if (DocumentsContract.isDocumentUri(context, uri)) {
            treeDocumentId = DocumentsContract.getDocumentId(uri);
        }
        if (treeDocumentId != null) {
            Uri buildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uri, treeDocumentId);
            if (buildDocumentUriUsingTree != null) {
                ?? obj = new Object();
                obj.a = context;
                obj.b = buildDocumentUriUsingTree;
                return obj;
            }
            throw new NullPointerException("Failed to build documentUri from a tree: " + uri);
        }
        d.e(uri, "Could not get document ID from Uri: ");
        return null;
    }

    public abstract boolean a();

    public abstract String d();

    public abstract boolean e();
}

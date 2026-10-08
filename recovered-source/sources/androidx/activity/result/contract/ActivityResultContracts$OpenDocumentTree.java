package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityResultContracts$OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        Uri uri = (Uri) obj;
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        if (uri != null) {
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        }
        return intent;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(Intent intent, int i) {
        if (i != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        return intent.getData();
    }
}

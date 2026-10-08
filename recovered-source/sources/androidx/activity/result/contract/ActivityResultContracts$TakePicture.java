package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityResultContracts$TakePicture extends ActivityResultContract<Uri, Boolean> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        Uri uri = (Uri) obj;
        uri.getClass();
        Intent addFlags = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", uri).addFlags(1).addFlags(2);
        addFlags.getClass();
        return addFlags;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        ((Uri) obj).getClass();
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(Intent intent, int i) {
        boolean z;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
